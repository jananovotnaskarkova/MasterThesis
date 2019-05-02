package vahy.paperGenerics.policy.riskSubtree.playingDistribution;

import vahy.api.model.Action;
import vahy.api.model.observation.Observation;
import vahy.api.search.node.SearchNode;
import vahy.impl.model.reward.DoubleReward;
import vahy.paperGenerics.PaperMetadata;
import vahy.paperGenerics.PaperState;
import vahy.paperGenerics.policy.linearProgram.OptimalFlowSoftConstraint;
import vahy.paperGenerics.policy.riskSubtree.FlowSumSubtreeRiskCalculator;
import vahy.paperGenerics.policy.riskSubtree.SubtreeRiskCalculator;
import vahy.utils.ImmutableTriple;
import vahy.utils.RandomDistributionUtils;

import java.util.List;
import java.util.SplittableRandom;
import java.util.function.Supplier;
import java.util.stream.Collectors;

public class SoftLinearProgramDistributionProvider<
    TAction extends Action,
    TReward extends DoubleReward,
    TPlayerObservation extends Observation,
    TOpponentObservation extends Observation,
    TSearchNodeMetadata extends PaperMetadata<TAction, TReward>,
    TState extends PaperState<TAction, TReward, TPlayerObservation, TOpponentObservation, TState>>
    extends AbstractPlayingDistributionProvider<TAction, TReward, TPlayerObservation, TOpponentObservation, TSearchNodeMetadata, TState>  {


    private final Supplier<SubtreeRiskCalculator<TAction, TReward, TPlayerObservation, TOpponentObservation, TSearchNodeMetadata, TState>> subtreeRiskCalculatorSupplier;
    private final AbstractPlayingDistributionProvider<TAction, TReward, TPlayerObservation, TOpponentObservation, TSearchNodeMetadata, TState> backupDistributionProvider;
    private final double totalRiskAllowed;

    public SoftLinearProgramDistributionProvider(
        List<TAction> playerActions,
        SplittableRandom random,
        double totalRiskAllowed,
        AbstractPlayingDistributionProvider<TAction, TReward, TPlayerObservation, TOpponentObservation, TSearchNodeMetadata, TState> backupDistributionProvider)
    {
        super(playerActions, random);
        this.totalRiskAllowed = totalRiskAllowed;
        this.subtreeRiskCalculatorSupplier = FlowSumSubtreeRiskCalculator::new;
        this.backupDistributionProvider = backupDistributionProvider;
    }

    @Override
    public PlayingDistribution<TAction, TReward, TPlayerObservation, TOpponentObservation, TSearchNodeMetadata, TState> createDistribution(
        SearchNode<TAction, TReward, TPlayerObservation, TOpponentObservation, TSearchNodeMetadata, TState> node)
    {
        var softFlowCalculator = new OptimalFlowSoftConstraint<TAction, TReward, TPlayerObservation, TOpponentObservation, TSearchNodeMetadata, TState>(random, totalRiskAllowed);
        var existsSoftSolution = softFlowCalculator.optimizeFlow(node);

        if(existsSoftSolution) {
            var alternateDistribution = createDistributionAsArray(node
                .getChildNodeStream()
                .map(x -> {
                    var probabilityFlowFromGlobalOptimization = x.getSearchNodeMetadata().getNodeProbabilityFlow().getSolution();
                    var subtreeRisk = probabilityFlowFromGlobalOptimization - TOLERANCE <= 0.0
                        ? 1.0
                        : subtreeRiskCalculatorSupplier.get().calculateRisk(x) / probabilityFlowFromGlobalOptimization;
                    return new ImmutableTriple<>(x.getAppliedAction(), probabilityFlowFromGlobalOptimization, subtreeRisk);
                })
                .collect(Collectors.toList()));
            RandomDistributionUtils.tryToRoundDistribution(alternateDistribution.getSecond());
            int index = RandomDistributionUtils.getRandomIndexFromDistribution(alternateDistribution.getSecond(), random);
            return new PlayingDistribution<>(
                alternateDistribution.getFirst().get(index),
                index,
                alternateDistribution.getSecond(),
                alternateDistribution.getThird(),
                subtreeRiskCalculatorSupplier);
        } else {
            return backupDistributionProvider.createDistribution(node);
        }
    }
}
