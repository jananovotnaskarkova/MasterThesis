package vahy.environment.state;

import vahy.api.model.Action;
import vahy.api.model.State;
import vahy.api.model.observation.Observation;
import vahy.impl.model.reward.DoubleScalarReward;

public interface PaperState<
    TAction extends Action,
    TReward extends DoubleScalarReward,
    TObservation extends Observation,
    TState extends State<TAction, TReward, TObservation, TState>>
    extends State<TAction, TReward, TObservation, TState> {

    boolean isRiskHit();
}
