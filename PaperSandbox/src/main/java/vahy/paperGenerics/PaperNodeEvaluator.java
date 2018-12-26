package vahy.paperGenerics;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import vahy.api.model.Action;
import vahy.api.model.State;
import vahy.api.model.StateRewardReturn;
import vahy.api.model.observation.Observation;
import vahy.api.search.node.SearchNode;
import vahy.api.search.node.factory.SearchNodeFactory;
import vahy.api.search.nodeEvaluator.TrainableNodeEvaluator;
import vahy.impl.model.observation.DoubleVector;
import vahy.impl.model.reward.DoubleReward;
import vahy.paperGenerics.reinforcement.TrainableApproximator;
import vahy.utils.ImmutableTuple;

import java.util.Arrays;
import java.util.List;
import java.util.Map;

public class PaperNodeEvaluator<
    TAction extends Action,
    TOpponentObservation extends Observation,
    TSearchNodeMetadata extends PaperMetadata<TAction, DoubleReward>,
    TState extends State<TAction, DoubleReward, DoubleVector, TOpponentObservation, TState>>
    implements TrainableNodeEvaluator<TAction, DoubleReward, DoubleVector, TOpponentObservation, TSearchNodeMetadata, TState> {

    private static final Logger logger = LoggerFactory.getLogger(PaperNodeEvaluator.class);

    private final SearchNodeFactory<TAction, DoubleReward, DoubleVector, TOpponentObservation, TSearchNodeMetadata, TState> searchNodeFactory;
    private final TrainableApproximator<DoubleVector> trainableApproximator;
    private final TAction[] allPlayerActions;
    private final TAction[] allOpponentActions;

    private int nodesExpandedCount = 0;

    public PaperNodeEvaluator(SearchNodeFactory<TAction, DoubleReward, DoubleVector, TOpponentObservation, TSearchNodeMetadata, TState> searchNodeFactory,
                              TrainableApproximator<DoubleVector> trainableApproximator, TAction[] allPlayerActions, TAction[] allOpponentActions) {
        this.searchNodeFactory = searchNodeFactory;
        this.trainableApproximator = trainableApproximator;
        this.allPlayerActions = allPlayerActions;
        this.allOpponentActions = allOpponentActions;
    }

    @Override
    public void evaluateNode(SearchNode<TAction, DoubleReward, DoubleVector, TOpponentObservation, TSearchNodeMetadata, TState> selectedNode) {
        if(selectedNode.isRoot() && selectedNode.getSearchNodeMetadata().getVisitCounter() == 0) {
            logger.trace("Expanding root since it is freshly created without evaluation");
            innerEvaluation(selectedNode);
        }
        TAction[] allPossibleActions = selectedNode.getAllPossibleActions();
        logger.trace("Expanding node [{}] with possible actions: [{}] ", selectedNode, Arrays.toString(allPossibleActions));
        Map<TAction, SearchNode<TAction, DoubleReward, DoubleVector, TOpponentObservation, TSearchNodeMetadata, TState>> childNodeMap = selectedNode.getChildNodeMap();
        for (TAction nextAction : allPossibleActions) {
            childNodeMap.put(nextAction, evaluateChildNode(selectedNode, nextAction));
        }
    }

    private void innerEvaluation(SearchNode<TAction, DoubleReward, DoubleVector, TOpponentObservation, TSearchNodeMetadata, TState> node) {
        throw new UnsupportedOperationException("WELL FINISH ME");
//        nodesExpandedCount++;
//        double[] prediction = trainableApproximator.apply(node.getWrappedState().getPlayerObservation());
//        node.getSearchNodeMetadata().setPredictedReward(new DoubleReward(prediction[PaperModel.Q_VALUE_INDEX]));
//        node.getSearchNodeMetadata().setPredictedRisk(prediction[PaperModel.RISK_VALUE_INDEX]);
//        Map<TAction, Double> childPriorProbabilities = node.getSearchNodeMetadata().getChildPriorProbabilities();
//        if(node.getWrappedState().isPlayerTurn()) {
//            for (int i = 0; i < allPlayerActions.length; i++) {
//                childPriorProbabilities.put(allPlayerActions[i], (prediction[i + PaperModel.POLICY_START_INDEX]));
//            }
//        } else {

//            ImmutableTuple<List<TAction>, List<Double>> environmentActionsWithProbabilities = node.getWrappedState().environmentActionsWithProbabilities();
//            for (int i = 0; i < environmentActionsWithProbabilities.getFirst().size(); i++) {
//                childPriorProbabilities.put(environmentActionsWithProbabilities.getFirst().get(i), environmentActionsWithProbabilities.getSecond().get(i));
//            }
//        }
    }

    private SearchNode<TAction, DoubleReward, DoubleVector, TOpponentObservation, TSearchNodeMetadata, TState> evaluateChildNode(
        SearchNode<TAction, DoubleReward, DoubleVector, TOpponentObservation, TSearchNodeMetadata, TState> parent,
        TAction nextAction) {
        StateRewardReturn<TAction, DoubleReward, DoubleVector, TOpponentObservation, TState> stateRewardReturn = parent.applyAction(nextAction);
        SearchNode<TAction, DoubleReward, DoubleVector, TOpponentObservation, TSearchNodeMetadata, TState> childNode = searchNodeFactory
            .createNode(stateRewardReturn, parent, nextAction);
        innerEvaluation(childNode);
        return childNode;
    }

    @Override
    public void train(List<ImmutableTuple<DoubleVector, double[]>> trainData) {
        trainableApproximator.train(trainData);
    }

    public int getNodesExpandedCount() {
        return nodesExpandedCount;
    }
}