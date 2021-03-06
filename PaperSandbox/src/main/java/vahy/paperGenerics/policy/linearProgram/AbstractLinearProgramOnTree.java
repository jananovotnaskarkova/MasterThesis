package vahy.paperGenerics.policy.linearProgram;

import com.quantego.clp.CLP;
import com.quantego.clp.CLPExpression;
import com.quantego.clp.CLPVariable;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import vahy.api.model.Action;
import vahy.api.model.observation.Observation;
import vahy.api.search.node.SearchNode;
import vahy.paperGenerics.metadata.PaperMetadata;
import vahy.paperGenerics.PaperState;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;

public abstract class AbstractLinearProgramOnTree<
    TAction extends Action<TAction>,
    TPlayerObservation extends Observation,
    TOpponentObservation extends Observation,
    TSearchNodeMetadata extends PaperMetadata<TAction>,
    TState extends PaperState<TAction, TPlayerObservation, TOpponentObservation, TState>>  {

    private static final Logger logger = LoggerFactory.getLogger(AbstractLinearProgramOnTree.class.getName());

    private static final double FLOW_TOLERANCE = 1.0 - Math.pow(10, -10);

    private static final double LOWER_BOUND = 0.0;
    private static final double UPPER_BOUND = 1.0;
    private static final double CHILD_VARIABLE_COEFFICIENT = 1.0;
    private static final double PARENT_VARIABLE_COEFFICIENT = -1.0;
    private static final double RISK_COEFFICIENT = 1.0;

    protected CLP model;
    protected LinkedList<SearchNode<TAction, TPlayerObservation, TOpponentObservation, TSearchNodeMetadata, TState>> queue;
    private boolean maximize;

    protected AbstractLinearProgramOnTree(boolean maximize) {
        this.model = new CLP();
        this.queue = new LinkedList<>();
        this.maximize = maximize;
    }

    protected abstract void setLeafObjective(SearchNode<TAction, TPlayerObservation, TOpponentObservation, TSearchNodeMetadata, TState> node);

    protected abstract void finalizeHardConstraints();

    public double getObjectiveValue() {
        return model.getObjectiveValue();
    }

    public boolean optimizeFlow(SearchNode<TAction, TPlayerObservation, TOpponentObservation, TSearchNodeMetadata, TState> root) {
        long startBuildingLinearProgram = System.currentTimeMillis();
        queue.addFirst(root);
        root.getSearchNodeMetadata().setNodeProbabilityFlow(model.addVariable().lb(UPPER_BOUND).ub(UPPER_BOUND));
        while(!queue.isEmpty()) {
            SearchNode<TAction, TPlayerObservation, TOpponentObservation, TSearchNodeMetadata, TState> node = queue.poll();
            Map<TAction, CLPVariable> actionChildFlowMap = new HashMap<>();

            if(!node.isLeaf()) {
                addNodeToQueue(node, actionChildFlowMap);
            }

            if(node.isLeaf()) {
                setLeafObjective(node);
            } else {
                addSummingChildrenWithParentToZeroExpression(node, actionChildFlowMap);
                if(!node.getWrappedState().isPlayerTurn()) {
                    addChildFlowBasedOnFixedProbabilitiesExpression(node, actionChildFlowMap);
                }
            }
        }

        finalizeHardConstraints();

        long finishBuildingLinearProgram = System.currentTimeMillis();
        logger.debug("Building linear program took [{}]ms", finishBuildingLinearProgram - startBuildingLinearProgram);
        long startOptimization = System.currentTimeMillis();
        CLP.STATUS status = maximize ? model.maximize() : model.minimize();
        if(status != CLP.STATUS.OPTIMAL) {
            logger.debug("Optimal solution was not found.");
            return false;
        }
        if(root.getSearchNodeMetadata().getNodeProbabilityFlow().getSolution() < FLOW_TOLERANCE) {
            throw new IllegalStateException("Flow is not equal to 1");
        }

        if(root.getChildNodeStream().map(x -> x.getSearchNodeMetadata().getNodeProbabilityFlow().getSolution()).mapToDouble(x -> x).sum() < FLOW_TOLERANCE) {
            throw new IllegalStateException("Flow is not equal to 1");
        }

        long finishOptimization = System.currentTimeMillis();
        logger.debug("Optimizing linear program took [{}] ms", finishOptimization - startOptimization);
        return true;
    }

    private void addNodeToQueue(SearchNode<TAction, TPlayerObservation, TOpponentObservation, TSearchNodeMetadata, TState> node,
                                Map<TAction, CLPVariable> actionChildFlowMap) {

        var entries = node.getChildNodeMap().entrySet();
//        var nodeChildIterator = new RandomIterator<>(entries.iterator(), random);
            var nodeChildIterator = entries.iterator();

        while(nodeChildIterator.hasNext()) {
            var entry = nodeChildIterator.next();
            queue.addLast(entry.getValue());
            CLPVariable childFlow = model.addVariable().lb(LOWER_BOUND).ub(UPPER_BOUND);
            entry.getValue().getSearchNodeMetadata().setNodeProbabilityFlow(childFlow);
            actionChildFlowMap.put(entry.getKey(), childFlow);
        }
    }

    public void addChildFlowBasedOnFixedProbabilitiesExpression(SearchNode<TAction, TPlayerObservation, TOpponentObservation, TSearchNodeMetadata, TState> node,
                                                                Map<TAction, CLPVariable> actionChildFlowMap) {
        for (Map.Entry<TAction, CLPVariable> entry : actionChildFlowMap.entrySet()) {
            SearchNode<TAction, TPlayerObservation, TOpponentObservation, TSearchNodeMetadata, TState> child = node.getChildNodeMap().get(entry.getKey());
            double priorProbability = child.getSearchNodeMetadata().getPriorProbability();
            CLPExpression fixedProbabilityExpression = model.createExpression();
            fixedProbabilityExpression.add(CHILD_VARIABLE_COEFFICIENT, child.getSearchNodeMetadata().getNodeProbabilityFlow());
            fixedProbabilityExpression.add(PARENT_VARIABLE_COEFFICIENT * priorProbability, node.getSearchNodeMetadata().getNodeProbabilityFlow());
            fixedProbabilityExpression.eq(0.0);
        }
    }

    public void addSummingChildrenWithParentToZeroExpression(SearchNode<TAction, TPlayerObservation, TOpponentObservation, TSearchNodeMetadata, TState> node,
                                                             Map<TAction, CLPVariable> actionChildFlowMap) {
        CLPExpression parentFlowDistribution = model.createExpression();
        for (Map.Entry<TAction, CLPVariable> childFlowVariable : actionChildFlowMap.entrySet()) {
            parentFlowDistribution.add(CHILD_VARIABLE_COEFFICIENT, childFlowVariable.getValue());
        }
        parentFlowDistribution.add(PARENT_VARIABLE_COEFFICIENT, node.getSearchNodeMetadata().getNodeProbabilityFlow());
        parentFlowDistribution.eq(0.0);
    }

}
