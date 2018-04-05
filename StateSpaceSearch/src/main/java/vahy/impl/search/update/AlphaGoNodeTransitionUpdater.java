package vahy.impl.search.update;

import vahy.api.model.Action;
import vahy.api.model.Observation;
import vahy.api.model.State;
import vahy.api.model.reward.Reward;
import vahy.api.search.update.NodeTransitionUpdater;
import vahy.impl.search.node.nodeMetadata.alphago.AlphaGoNodeMetadata;
import vahy.impl.search.node.nodeMetadata.alphago.AlphaGoStateActionMetadata;

public class AlphaGoNodeTransitionUpdater<
    TAction extends Action,
    TReward extends Reward,
    TObservation extends Observation,
    TState extends State<TAction, TReward, TObservation>>
    implements NodeTransitionUpdater<TAction, TReward, AlphaGoStateActionMetadata<TReward>, AlphaGoNodeMetadata<TAction, TReward>> {

    @Override
    public void applyUpdate(AlphaGoNodeMetadata<TAction, TReward> parent, AlphaGoNodeMetadata<TAction, TReward> child, TAction action) {

    }
}