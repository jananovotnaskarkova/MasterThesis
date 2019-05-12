package vahy.paperGenerics.policy.riskSubtree.playingDistribution;

import vahy.api.model.Action;
import vahy.api.model.observation.Observation;
import vahy.impl.model.reward.DoubleReward;
import vahy.paperGenerics.PaperMetadata;
import vahy.paperGenerics.PaperState;
import vahy.paperGenerics.policy.riskSubtree.SubtreeRiskCalculator;

import java.util.function.Supplier;

public class PlayingDistribution<
    TAction extends Action,
    TReward extends DoubleReward,
    TPlayerObservation extends Observation,
    TOpponentObservation extends Observation,
    TSearchNodeMetadata extends PaperMetadata<TAction, TReward>,
    TState extends PaperState<TAction, TReward, TPlayerObservation, TOpponentObservation, TState>> {

    private final TAction expectedPlayerAction;
    private final int expectedPlayerActionIndex;

    private final double[] playerDistribution;
    private final double[] riskOnPlayerSubNodes;

    private final Supplier<SubtreeRiskCalculator<TAction, TReward, TPlayerObservation, TOpponentObservation, TSearchNodeMetadata, TState>> usedSubTreeRiskCalculatorSupplier;

    public PlayingDistribution(TAction expectedPlayerAction,
                               int expectedPlayerActionIndex,
                               double[] playerDistribution,
                               double[] riskOnPlayerSubNodes,
                               Supplier<SubtreeRiskCalculator<TAction, TReward, TPlayerObservation, TOpponentObservation, TSearchNodeMetadata, TState>> usedSubTreeRiskCalculatorSupplier) {
        this.expectedPlayerAction = expectedPlayerAction;
        this.expectedPlayerActionIndex = expectedPlayerActionIndex;
        this.playerDistribution = playerDistribution;
        this.riskOnPlayerSubNodes = riskOnPlayerSubNodes;
        this.usedSubTreeRiskCalculatorSupplier = usedSubTreeRiskCalculatorSupplier;

        if(playerDistribution.length != riskOnPlayerSubNodes.length) {
            throw new IllegalArgumentException("Player distribution and risks on subnodes differ in length");
        }
    }

    public TAction getExpectedPlayerAction() {
        return expectedPlayerAction;
    }

    public int getExpectedPlayerActionIndex() {
        return expectedPlayerActionIndex;
    }

    public double[] getPlayerDistribution() {
        return playerDistribution;
    }

    public double[] getRiskOnPlayerSubNodes() {
        return riskOnPlayerSubNodes;
    }

    public Supplier<SubtreeRiskCalculator<TAction, TReward, TPlayerObservation, TOpponentObservation, TSearchNodeMetadata, TState>> getUsedSubTreeRiskCalculatorSupplier() {
        return usedSubTreeRiskCalculatorSupplier;
    }
}