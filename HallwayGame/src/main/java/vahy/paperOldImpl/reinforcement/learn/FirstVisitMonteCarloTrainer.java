package vahy.paperOldImpl.reinforcement.learn;

import vahy.api.model.StateActionReward;
import vahy.environment.HallwayAction;
import vahy.environment.state.EnvironmentProbabilities;
import vahy.environment.state.HallwayStateImpl;
import vahy.game.HallwayGameInitialInstanceSupplier;
import vahy.impl.model.observation.DoubleVector;
import vahy.impl.model.reward.DoubleReward;
import vahy.impl.model.reward.DoubleScalarRewardAggregator;
import vahy.paperOldImpl.policy.EnvironmentPolicySupplier;
import vahy.paperOldImpl.policy.PaperTrainablePaperPolicySupplier;
import vahy.paperOldImpl.reinforcement.episode.PaperEpisode;
import vahy.paperGenerics.reinforcement.episode.StepRecord;
import vahy.utils.ImmutableTuple;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public class FirstVisitMonteCarloTrainer extends AbstractMonteCarloTrainer {

    public FirstVisitMonteCarloTrainer(HallwayGameInitialInstanceSupplier initialStateSupplier, PaperTrainablePaperPolicySupplier paperTrainablePolicySupplier, EnvironmentPolicySupplier opponentPolicySupplier, DoubleScalarRewardAggregator rewardAggregator, double discountFactor, int stepCountLimit) {
        super(initialStateSupplier, paperTrainablePolicySupplier, opponentPolicySupplier, discountFactor, rewardAggregator, stepCountLimit);
    }

    @Override
    protected Map<DoubleVector, MutableDataSample> calculatedVisitedRewards(PaperEpisode paperEpisode) {
        Map<DoubleVector, MutableDataSample> firstVisitSet = new LinkedHashMap<>();
        List<ImmutableTuple<StateActionReward<HallwayAction, DoubleReward, DoubleVector, EnvironmentProbabilities, HallwayStateImpl>, StepRecord>> episodeHistory = paperEpisode.getEpisodeStateActionRewardList();
        for (int i = 0; i < episodeHistory.size(); i++) {
            if(!episodeHistory.get(i).getFirst().getState().isOpponentTurn()) {
                if(!firstVisitSet.containsKey(episodeHistory.get(i).getFirst().getState().getPlayerObservation())) {
                    firstVisitSet.put(episodeHistory.get(i).getFirst().getState().getPlayerObservation(), createDataSample(episodeHistory, i));
                }
            }
        }
        return firstVisitSet;
    }


}
