package vahy.paperGenerics.policy;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import vahy.api.model.Action;
import vahy.api.model.observation.Observation;
import vahy.api.search.tree.treeUpdateCondition.TreeUpdateCondition;
import vahy.impl.model.observation.DoubleVector;
import vahy.impl.policy.AbstractTreeSearchPolicy;
import vahy.paperGenerics.metadata.PaperMetadata;
import vahy.paperGenerics.PaperState;
import vahy.paperGenerics.PolicyStepMode;
import vahy.utils.ArrayUtils;
import vahy.utils.ImmutableTuple;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.SplittableRandom;
import java.util.stream.Collectors;

public class PaperPolicyImpl<
    TAction extends Action<TAction>,
    TPlayerObservation extends DoubleVector,
    TOpponentObservation extends Observation,
    TSearchNodeMetadata extends PaperMetadata<TAction>,
    TState extends PaperState<TAction, TPlayerObservation, TOpponentObservation, TState>>
    extends AbstractTreeSearchPolicy<TAction, TPlayerObservation, TOpponentObservation, TSearchNodeMetadata, TState, PaperPolicyRecord>
    implements PaperPolicy<TAction, TPlayerObservation, TOpponentObservation, TState> {

    private static final Logger logger = LoggerFactory.getLogger(PaperPolicyImpl.class.getName());

    private final int totalPlayerActionCount;

    private final SplittableRandom random;
    private final RiskAverseSearchTree<TAction, TPlayerObservation, TOpponentObservation, TSearchNodeMetadata, TState> riskAverseSearchTree;

    private final boolean isExplorationDisabled;
    private final double explorationConstant;
    private final double temperature;

    private double[] actionDistribution;
    private boolean hasActionChanged = false;

    public PaperPolicyImpl(Class<TAction> clazz,
                           TreeUpdateCondition treeUpdateCondition,
                           RiskAverseSearchTree<TAction, TPlayerObservation, TOpponentObservation, TSearchNodeMetadata, TState> searchTree,
                           SplittableRandom random,
                           double explorationConstant,
                           double temperature) {
        this(clazz, treeUpdateCondition, searchTree, random, false, explorationConstant, temperature);
    }

    public PaperPolicyImpl(Class<TAction> clazz,
                           TreeUpdateCondition treeUpdateCondition,
                           RiskAverseSearchTree<TAction, TPlayerObservation, TOpponentObservation, TSearchNodeMetadata, TState> searchTree,
                           SplittableRandom random) {
        this(clazz, treeUpdateCondition, searchTree, random, true, 0.0, 0.0);
    }

    private PaperPolicyImpl(Class<TAction> clazz,
                            TreeUpdateCondition treeUpdateCondition,
                            RiskAverseSearchTree<TAction, TPlayerObservation, TOpponentObservation, TSearchNodeMetadata, TState> searchTree,
                            SplittableRandom random,
                            boolean isExplorationDisabled,
                            double explorationConstant,
                            double temperature) {
        super(treeUpdateCondition, searchTree);
        this.random = random;
        this.riskAverseSearchTree = searchTree;
        TAction[] allActions = clazz.getEnumConstants();

        this.totalPlayerActionCount = Arrays.stream(allActions).filter(Action::isPlayerAction).collect(Collectors.toCollection(ArrayList::new)).size();
        this.isExplorationDisabled = isExplorationDisabled;
        this.explorationConstant = explorationConstant;
        this.temperature = temperature;
        this.actionDistribution = new double[totalPlayerActionCount];
    }

    @Override
    public double getEstimatedReward(TState gameState) {
        checkStateRoot(gameState);
        return riskAverseSearchTree.getRoot().getSearchNodeMetadata().getExpectedReward();
    }

    @Override
    public double getEstimatedRisk(TState gameState) {
        checkStateRoot(gameState);
        return riskAverseSearchTree.getRoot().getSearchNodeMetadata().getPredictedRisk();
    }

    @Override
    public double[] getActionProbabilityDistribution(TState gameState) {
        checkStateRoot(gameState);
        return innerActionProbability();
    }

    private double[] innerActionProbability() {
        if(!hasActionChanged) {
            throw new IllegalStateException("Action probability distribution second time without changing state");
        }
        return ArrayUtils.cloneArray(actionDistribution);
    }

    @Override
    public TAction getDiscreteAction(TState gameState) {
        checkStateRoot(gameState);
        expandSearchTree(gameState); //  TODO expand search tree should be enabled in episode simulation

        boolean exploitation = isExplorationDisabled || random.nextDouble() > explorationConstant;

        var actionDistributionAndDiscreteAction = riskAverseSearchTree.getActionDistributionAndDiscreteAction(
            gameState,
            exploitation ? PolicyStepMode.EXPLOITATION : PolicyStepMode.EXPLORATION,
            temperature);
        var action = actionDistributionAndDiscreteAction.getExpectedPlayerAction();
        var actionList = actionDistributionAndDiscreteAction.getActionList();
        var actionProbabilities = actionDistributionAndDiscreteAction.getPlayerDistribution();
        for (int i = 0; i < totalPlayerActionCount; i++) {
            actionDistribution[i] = 0.0d;
        }
        for (int i = 0; i < actionList.size(); i++) {
            var element = actionList.get(i);
            var probability = actionProbabilities[i];
            actionDistribution[element.getActionIndexInPlayerActions()] = probability;
        }
        hasActionChanged = true;
        if(logger.isDebugEnabled()) {
            if(exploitation) {
                logger.debug("Exploitation action [{}].", action);
            } else {
                logger.debug("Exploration action [{}]", action);
            }
        }
        return action;
    }

    @Override
    public double[] getPriorActionProbabilityDistribution(TState gameState) {
        checkStateRoot(gameState);
        return innerPriorProbabilityDistribution(gameState);
    }

    private double[] innerPriorProbabilityDistribution(TState gameState) {
        if(gameState.isOpponentTurn()) {
            throw new IllegalStateException("Can't sample opponent's distribution from player's policy");
        }
        double[] priorProbabilities = new double[totalPlayerActionCount];
        List<ImmutableTuple<TAction, Double>> actionDoubleList = this.riskAverseSearchTree
            .getRoot()
            .getChildNodeStream()
            .map(x -> new ImmutableTuple<>(x.getAppliedAction(), x.getSearchNodeMetadata().getPriorProbability()))
            .collect(Collectors.toList());
        for (ImmutableTuple<TAction, Double> entry : actionDoubleList) {
            int actionIndex = entry.getFirst().getActionIndexInPlayerActions();
            priorProbabilities[actionIndex] = entry.getSecond();
        }
        return priorProbabilities;
    }

    @Override
    public double getInnerRiskAllowed() {
        return this.riskAverseSearchTree.getTotalRiskAllowed();
    }

    @Override
    public PaperPolicyRecord getPolicyRecord(TState gameState) {
        checkStateRoot(gameState);
        return new PaperPolicyRecord(
            innerPriorProbabilityDistribution(gameState),
            innerActionProbability(),
            riskAverseSearchTree.getRoot().getSearchNodeMetadata().getExpectedReward(),
            riskAverseSearchTree.getRoot().getSearchNodeMetadata().getSumOfRisk(),
            riskAverseSearchTree.getTotalRiskAllowed(),
            riskAverseSearchTree.getTotalNodesExpanded());
    }

    @Override
    public int getExpandedNodeCountSoFar() {
        return this.riskAverseSearchTree.getTotalNodesExpanded();
    }
}
