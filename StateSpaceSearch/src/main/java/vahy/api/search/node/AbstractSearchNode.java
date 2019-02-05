package vahy.api.search.node;

import vahy.api.model.Action;
import vahy.api.model.State;
import vahy.api.model.observation.Observation;
import vahy.api.model.reward.Reward;

public abstract class AbstractSearchNode<
    TAction extends Action,
    TReward extends Reward,
    TPlayerObservation extends Observation,
    TOpponentObservation extends Observation,
    TSearchNodeMetadata extends SearchNodeMetadata<TReward>,
    TState extends State<TAction, TReward, TPlayerObservation, TOpponentObservation, TState>>
    implements SearchNode<TAction, TReward, TPlayerObservation, TOpponentObservation, TSearchNodeMetadata, TState> {

    protected final boolean isFinalState;
    protected final boolean isOpponentTurn;
    protected final TAction[] allPossibleActions;
    protected final TState wrappedState;
    private final TSearchNodeMetadata searchNodeMetadata;
    private SearchNode<TAction, TReward, TPlayerObservation, TOpponentObservation, TSearchNodeMetadata, TState> parent;
    private TAction appliedParentAction;

    protected AbstractSearchNode(
        TState wrappedState,
        SearchNode<TAction, TReward, TPlayerObservation, TOpponentObservation, TSearchNodeMetadata, TState> parent,
        TAction appliedParentAction,
        TSearchNodeMetadata searchNodeMetadata) {
        this.wrappedState = wrappedState;
        this.searchNodeMetadata = searchNodeMetadata;
        this.parent = parent;
        this.appliedParentAction = appliedParentAction;
        this.isFinalState = wrappedState.isFinalState();
        this.isOpponentTurn = wrappedState.isOpponentTurn();
        this.allPossibleActions = wrappedState.getAllPossibleActions();
    }

    @Override
    public TAction getAppliedAction() {
        return appliedParentAction;
    }

    @Override
    public SearchNode<TAction, TReward, TPlayerObservation, TOpponentObservation, TSearchNodeMetadata, TState> getParent() {
        return parent;
    }

    @Override
    public TAction[] getAllPossibleActions() {
        return allPossibleActions;
    }

    @Override
    public TSearchNodeMetadata getSearchNodeMetadata() {
        return searchNodeMetadata;
    }

    @Override
    public TState getWrappedState() {
        return wrappedState;
    }

    @Override
    public boolean isFinalNode() {
        return isFinalState;
    }

    @Override
    public boolean isRoot() {
        return parent == null;
    }

    @Override
    public boolean isOpponentTurn() {
        return isOpponentTurn;
    }

    @Override
    public void makeRoot() {
        parent = null;
        appliedParentAction = null;
    }
}
