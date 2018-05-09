package vahy.environment.agent.policy.randomized;

import vahy.api.model.State;
import vahy.api.search.simulation.NodeEvaluationSimulator;
import vahy.api.search.update.NodeTransitionUpdater;
import vahy.environment.ActionType;
import vahy.environment.agent.policy.AbstractTreeSearchPolicy;
import vahy.environment.state.ImmutableStateImpl;
import vahy.impl.model.DoubleVectorialObservation;
import vahy.impl.model.reward.DoubleScalarReward;
import vahy.impl.search.node.factory.SearchNodeBaseFactoryImpl;
import vahy.impl.search.node.nodeMetadata.AbstractSearchNodeMetadata;
import vahy.impl.search.node.nodeMetadata.AbstractStateActionMetadata;
import vahy.impl.search.node.nodeMetadata.empty.EmptySearchNodeMetadata;
import vahy.impl.search.node.nodeMetadata.empty.EmptyStateActionMetadata;
import vahy.impl.search.nodeSelector.treeTraversing.EGreedyNodeSelector;

import java.util.LinkedHashMap;
import java.util.SplittableRandom;

public class EGreedyPolicy extends AbstractTreeSearchPolicy<AbstractStateActionMetadata<DoubleScalarReward>, AbstractSearchNodeMetadata<ActionType, DoubleScalarReward, AbstractStateActionMetadata<DoubleScalarReward>>> {

    public EGreedyPolicy(
        SplittableRandom random,
        int uprateTreeCount,
        double epsilon,
        ImmutableStateImpl gameState,
        NodeTransitionUpdater<
            ActionType,
            DoubleScalarReward,
            AbstractStateActionMetadata<DoubleScalarReward>,
            AbstractSearchNodeMetadata<ActionType, DoubleScalarReward, AbstractStateActionMetadata<DoubleScalarReward>>> nodeTransitionUpdater,
        NodeEvaluationSimulator<
            ActionType,
            DoubleScalarReward,
            DoubleVectorialObservation,
            AbstractStateActionMetadata<DoubleScalarReward>,
            AbstractSearchNodeMetadata<ActionType, DoubleScalarReward, AbstractStateActionMetadata<DoubleScalarReward>>,
            State<ActionType, DoubleScalarReward, DoubleVectorialObservation>> rewardSimulator) {
        super(random,
            uprateTreeCount,
            new SearchNodeBaseFactoryImpl<>(
                (stateRewardReturn, parent) -> {
                    Double cumulativeReward = parent != null ? parent.getSearchNodeMetadata().getCumulativeReward().getValue() : 0.0;
                    return new EmptySearchNodeMetadata<>(new DoubleScalarReward(stateRewardReturn.getReward().getValue() + cumulativeReward), new LinkedHashMap<>());
                }
            ),
            () -> new EGreedyNodeSelector<>(epsilon, random),
            stateRewardReturn -> new EmptyStateActionMetadata<>(stateRewardReturn.getReward()), nodeTransitionUpdater,
            gameState,
            rewardSimulator);
    }
}
