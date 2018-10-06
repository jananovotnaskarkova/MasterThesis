package vahy.AlphaGo.reinforcement.episode;

import vahy.impl.model.reward.DoubleScalarReward;

public class AlphaGoStepRecord {

    private final double[] priorProbabilities;
    private final double[] policyProbabilities;
    private final DoubleScalarReward rewardPredicted;
    private final double risk;

    public AlphaGoStepRecord(double[] priorProbabilities, double[] policyProbabilities, DoubleScalarReward rewardPredicted, double risk) {
        this.priorProbabilities = priorProbabilities;
        this.policyProbabilities = policyProbabilities;
        this.rewardPredicted = rewardPredicted;
        this.risk = risk;
    }

    public double[] getPriorProbabilities() {
        return priorProbabilities;
    }

    public double[] getPolicyProbabilities() {
        return policyProbabilities;
    }

    public DoubleScalarReward getRewardPredicted() {
        return rewardPredicted;
    }

    public double getRisk() {
        return risk;
    }
}
