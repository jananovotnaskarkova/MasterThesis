package vahy.testDomain.model;

import vahy.api.model.Action;

import java.util.Arrays;

public enum TestAction implements Action<TestAction> {

    A(true, 'A', 1),
    B(true, 'B', 2),
    C(true, 'C', 3),

    X(false, 'X', -1),
    Y(false, 'Y', -2),
    Z(false, 'Z', -3);

    public static TestAction[] playerActions = Arrays.stream(TestAction.values()).filter(TestAction::isPlayerAction).toArray(TestAction[]::new);
    public static TestAction[] opponentActions = Arrays.stream(TestAction.values()).filter(actionType -> !actionType.isPlayerAction).toArray(TestAction[]::new);
    private final boolean isPlayerAction;
    private final char charRepresentation;
    private final double reward;

    TestAction(boolean isPlayerAction, char charRepresentation, double reward) {
        this.isPlayerAction = isPlayerAction;
        this.charRepresentation = charRepresentation;
        this.reward = reward;
    }

    public char getCharRepresentation() {
        return charRepresentation;
    }

    @Override
    public TestAction[] getAllPlayerActions() {
        return playerActions;
    }

    @Override
    public TestAction[] getAllOpponentActions() {
        return opponentActions;
    }

    public boolean isPlayerAction() {
        return isPlayerAction;
    }

    @Override
    public int getActionIndexInPossibleActions() {
        if(this.isPlayerAction) {
            for (int i = 0; i < playerActions.length; i++) {
                if(this.equals(playerActions[i])) {
                    return i;
                }
            }
        } else {
            for (int i = 0; i < opponentActions.length; i++) {
                if(this.equals(opponentActions[i])) {
                    return i;
                }
            }
        }
        throw new IllegalStateException("Not expected state");
    }

    public double getReward() {
        return reward;
    }



}
