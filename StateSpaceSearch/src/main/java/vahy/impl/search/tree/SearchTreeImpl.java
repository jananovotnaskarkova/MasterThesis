package vahy.impl.search.tree;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import vahy.api.model.Action;
import vahy.api.model.State;
import vahy.api.model.StateRewardReturn;
import vahy.api.model.observation.Observation;
import vahy.api.model.reward.Reward;
import vahy.api.search.node.SearchNode;
import vahy.api.search.node.SearchNodeMetadata;
import vahy.api.search.nodeEvaluator.NodeEvaluator;
import vahy.api.search.nodeSelector.NodeSelector;
import vahy.api.search.tree.SearchTree;
import vahy.api.search.update.TreeUpdater;
import vahy.impl.model.ImmutableStateRewardReturnTuple;

import java.util.LinkedList;
import java.util.Map;

public class SearchTreeImpl<
    TAction extends Action,
    TReward extends Reward,
    TPlayerObservation extends Observation,
    TOpponentObservation extends Observation,
    TSearchNodeMetadata extends SearchNodeMetadata<TReward>,
    TState extends State<TAction, TReward, TPlayerObservation, TOpponentObservation, TState>>
    implements SearchTree<TAction, TReward, TPlayerObservation, TOpponentObservation, TSearchNodeMetadata, TState> {

    private static final Logger logger = LoggerFactory.getLogger(SearchTreeImpl.class);

    private SearchNode<TAction, TReward, TPlayerObservation, TOpponentObservation, TSearchNodeMetadata, TState> root;
    private final NodeSelector<TAction, TReward, TPlayerObservation, TOpponentObservation, TSearchNodeMetadata, TState> nodeSelector;
    private final NodeEvaluator<TAction, TReward, TPlayerObservation, TOpponentObservation, TSearchNodeMetadata, TState> nodeEvaluator;
    private final TreeUpdater<TAction, TReward, TPlayerObservation, TOpponentObservation, TSearchNodeMetadata, TState> treeUpdater;

    private int totalNodesExpanded = 0;
    private int totalNodesCreated = 0; // should be 1 for root
    private int maxBranchingFactor = 0;

    public SearchTreeImpl(
        SearchNode<TAction, TReward, TPlayerObservation, TOpponentObservation, TSearchNodeMetadata, TState> root,
        NodeSelector<TAction, TReward, TPlayerObservation, TOpponentObservation, TSearchNodeMetadata, TState> nodeSelector,
        TreeUpdater<TAction, TReward, TPlayerObservation, TOpponentObservation, TSearchNodeMetadata, TState> treeUpdater,
        NodeEvaluator<TAction, TReward, TPlayerObservation, TOpponentObservation, TSearchNodeMetadata, TState> nodeEvaluator) {
        this.root = root;
        this.nodeSelector = nodeSelector;
        this.treeUpdater = treeUpdater;
        this.nodeEvaluator = nodeEvaluator;
        this.nodeSelector.setNewRoot(root);
    }

    @Override
    public boolean updateTree() {
        SearchNode<TAction, TReward, TPlayerObservation, TOpponentObservation, TSearchNodeMetadata, TState> selectedNodeForExpansion = nodeSelector.selectNextNode();
        if(selectedNodeForExpansion == null) {
            return false;
        }
        if(!selectedNodeForExpansion.isFinalNode()) {
            logger.trace("Selected node [{}] is not final node, expanding", selectedNodeForExpansion);
            expandAndEvaluateNode(selectedNodeForExpansion);
        }
        treeUpdater.updateTree(selectedNodeForExpansion);
        return true;
    }

    protected void checkApplicableAction(TAction action) {
        if(root.isFinalNode()) {
            throw new IllegalStateException("Can't apply action [" + action +"] on final state");
        }
        if(root.isLeaf()) {
            expandAndEvaluateNode(root);
            // throw new IllegalStateException("Policy cannot pick action from leaf node");
        }
    }

    protected StateRewardReturn<TAction, TReward, TPlayerObservation, TOpponentObservation, TState> innerApplyAction(TAction action) {
        TReward reward = root.getChildNodeMap().get(action).getSearchNodeMetadata().getGainedReward();
        root = root.getChildNodeMap().get(action);
        root.makeRoot();
        nodeSelector.setNewRoot(root);
        resetTreeStatistics();
        return new ImmutableStateRewardReturnTuple<>(root.getWrappedState(), reward);
    }

    @Override
    public TAction[] getAllPossibleActions() {
        return this.root.getWrappedState().getAllPossibleActions();
    }

    @Override
    public StateRewardReturn<TAction, TReward, TPlayerObservation, TOpponentObservation, TState> applyAction(TAction action) {
        checkApplicableAction(action);
        return innerApplyAction(action);
    }

    @Override
    public TState deepCopy() {
        throw new UnsupportedOperationException("Deep copy on search tree is not yet defined nad maybe won't be since it's not really needed");
    }

    @Override
    public TPlayerObservation getPlayerObservation() {
        return root.getWrappedState().getPlayerObservation();
    }

    @Override
    public TOpponentObservation getOpponentObservation() {
        return root.getWrappedState().getOpponentObservation();
    }

    @Override
    public String readableStringRepresentation() {
        return root.getWrappedState().readableStringRepresentation();
    }

    @Override
    public boolean isOpponentTurn() {
        return root.isOpponentTurn();
    }

    @Override
    public boolean isFinalState() {
        return root.isFinalNode();
    }

    @Override
    public SearchNode<TAction, TReward, TPlayerObservation, TOpponentObservation, TSearchNodeMetadata, TState> getRoot() {
        return root;
    }

    private void expandAndEvaluateNode(SearchNode<TAction, TReward, TPlayerObservation, TOpponentObservation, TSearchNodeMetadata, TState> selectedNodeForExpansion) {
        nodeEvaluator.evaluateNode(selectedNodeForExpansion);
        totalNodesExpanded++;
        int branchingNodesCount = selectedNodeForExpansion.getChildNodeMap().size();
        if(branchingNodesCount > maxBranchingFactor) {
            maxBranchingFactor = branchingNodesCount;
        }
        totalNodesCreated += branchingNodesCount;
    }

    private void resetTreeStatistics() {
        totalNodesCreated = 0;
        totalNodesExpanded = 0;
        maxBranchingFactor = Integer.MIN_VALUE;
    }

    public int getTotalNodesExpanded() {
        return totalNodesExpanded;
    }

    public int getTotalNodesCreated() {
        return totalNodesCreated;
    }

    public int getMaxBranchingFactor() {
        return maxBranchingFactor;
    }

    public double calculateAverageBranchingFactor() {
        return totalNodesCreated / (double) totalNodesExpanded;
    }

    @Override
    public String toString() {
        LinkedList<SearchNode<TAction, TReward, TPlayerObservation, TOpponentObservation, TSearchNodeMetadata, TState>> queue = new LinkedList<>();
        queue.addFirst(this.getRoot());

        StringBuilder string = new StringBuilder();
        String start = "digraph G {";
        String end = "}";

        string.append(start);
        while(!queue.isEmpty()) {
            SearchNode<TAction, TReward, TPlayerObservation, TOpponentObservation, TSearchNodeMetadata, TState> node = queue.poll();
            for (Map.Entry<TAction, SearchNode<TAction, TReward, TPlayerObservation, TOpponentObservation, TSearchNodeMetadata, TState>> entry : node.getChildNodeMap().entrySet()) {
                SearchNode<TAction, TReward, TPlayerObservation, TOpponentObservation, TSearchNodeMetadata, TState> child = entry.getValue();
                queue.addLast(child);

                string.append("\"" + node.toString() + "\"");
                string.append(" -> ");
                string.append("\"" + child.toString() + "\"");
                string.append(" ");
                string.append("[ label = \"P(");
                string.append(entry.getKey());
                string.append("\" ]; \n");
            }
        }
        string.append(end);
        return string.toString();
    }
}
