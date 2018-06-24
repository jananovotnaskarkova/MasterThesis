package vahy.impl.episode;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import vahy.api.episode.Episode;
import vahy.api.episode.EpisodeAggregator;
import vahy.api.episode.InitialStateSupplier;
import vahy.api.model.Action;
import vahy.api.model.Observation;
import vahy.api.model.State;
import vahy.api.model.StateRewardReturn;
import vahy.api.model.reward.Reward;
import vahy.api.policy.Policy;
import vahy.api.policy.PolicySupplier;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class EpisodeAggregatorImpl<TAction extends Action, TReward extends Reward, TObservation extends Observation> implements EpisodeAggregator<TReward> {

    private static final Logger logger = LoggerFactory.getLogger(EpisodeAggregator.class);

    private final int uniqueEpisodeCount;
    private final int episodeIterationCount;
    private final InitialStateSupplier<TAction, TReward, TObservation> initialStateSupplier;
    private final PolicySupplier<TAction, TReward, TObservation> playerPolicySupplier;
    private final Policy<TAction, TReward, TObservation> opponentPolicy;

    public EpisodeAggregatorImpl(
        int uniqueEpisodeCount,
        int episodeIterationCount,
        InitialStateSupplier<TAction, TReward, TObservation> initialStateSupplier,
        PolicySupplier<TAction, TReward, TObservation> playerPolicySupplier,
        Policy<TAction, TReward, TObservation> opponentPolicy)
    {
        this.uniqueEpisodeCount = uniqueEpisodeCount;
        this.episodeIterationCount = episodeIterationCount;
        this.playerPolicySupplier = playerPolicySupplier;
        this.opponentPolicy = opponentPolicy;
        this.initialStateSupplier = initialStateSupplier;
    }

    public List<List<TReward>> runSimulation(){
        logger.info("Running simulation");
        List<List<TReward>> rewardHistory = new ArrayList<>();
        for (int i = 0; i < uniqueEpisodeCount; i++) {
            logger.info("Running {}th unique episode", i);
            for (int j = 0; j < episodeIterationCount; j++) {
                State<TAction, TReward, TObservation> initialGameState = initialStateSupplier.createInitialState();
                Policy<TAction, TReward, TObservation> policy = playerPolicySupplier.initializePolicy(initialGameState);
                Episode<TAction, TReward, TObservation> episode = new EpisodeImpl<>(initialGameState, policy, opponentPolicy);
                System.out.println("Running [" + i +"] a [" + j +  "] episode");
                episode.runEpisode();
                rewardHistory.add(episode.getEpisodeStepHistoryList().stream().map(StateRewardReturn::getReward).collect(Collectors.toList()));
            }
        }
        return rewardHistory;
    }
}
