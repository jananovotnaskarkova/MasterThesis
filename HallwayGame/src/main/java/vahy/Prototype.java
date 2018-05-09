package vahy;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import vahy.api.model.State;
import vahy.api.model.reward.RewardAggregator;
import vahy.api.search.simulation.NodeEvaluationSimulator;
import vahy.api.search.update.NodeTransitionUpdater;
import vahy.chart.ChartBuilder;
import vahy.environment.ActionType;
import vahy.environment.agent.policy.environment.EnvironmentPolicy;
import vahy.environment.agent.policy.randomized.EGreedyPolicy;
import vahy.environment.config.ConfigBuilder;
import vahy.environment.config.GameConfig;
import vahy.environment.episode.EpisodeAggregator;
import vahy.game.InitialStateInstanceFactory;
import vahy.game.NotValidGameStringRepresentationException;
import vahy.impl.model.DoubleVectorialObservation;
import vahy.impl.model.reward.DoubleScalarReward;
import vahy.impl.model.reward.DoubleScalarRewardAggregator;
import vahy.impl.search.node.nodeMetadata.empty.EmptySearchNodeMetadata;
import vahy.impl.search.node.nodeMetadata.empty.EmptyStateActionMetadata;
import vahy.impl.search.simulation.MonteCarloSimulator;
import vahy.impl.search.update.UniformAverageDiscountEstimateRewardTransitionUpdater;
import vahy.utils.ImmutableTuple;

import java.io.File;
import java.io.IOException;
import java.net.URL;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.SplittableRandom;

public class Prototype {

    private static final Logger logger = LoggerFactory.getLogger(Prototype.class);

    public static void main(String[] args) throws IOException, NotValidGameStringRepresentationException {
        ClassLoader classLoader = Prototype.class.getClassLoader();
//        URL url = classLoader.getResource("examples/hallway_demo0.txt");
//        URL url = classLoader.getResource("examples/hallway_demo2.txt");
         URL url = classLoader.getResource("examples/hallway_demo3.txt");
//         URL url = classLoader.getResource("examples/hallway_demo4.txt");
//         URL url = classLoader.getResource("examples/hallway_demo5.txt");
//        URL url = classLoader.getResource("examples/hallway0.txt");
//        URL url = classLoader.getResource("examples/hallway8.txt");

        File file = new File(url.getFile());
        SplittableRandom random = new SplittableRandom(2);
        GameConfig gameConfig = new ConfigBuilder().reward(1000).noisyMoveProbability(0.0).stepPenalty(1).trapProbability(1).buildConfig();
        InitialStateInstanceFactory initialStateInstanceFactory = new InitialStateInstanceFactory(gameConfig, random);


        RewardAggregator<DoubleScalarReward> rewardAggregator = new DoubleScalarRewardAggregator();
        double discountFactor = 0.9;


//        NodeEvaluationSimulator<
//            ActionType,
//            DoubleScalarReward,
//            DoubleVectorialObservation,
//            EmptyStateActionMetadata<DoubleScalarReward>,
//            EmptySearchNodeMetadata<ActionType, DoubleScalarReward>,
//            State<ActionType, DoubleScalarReward, DoubleVectorialObservation>> rewardSimulator = new CumulativeRewardSimulator<>();

//        NodeTransitionUpdater<
//            ActionType,
//            DoubleScalarReward,
//            EmptyStateActionMetadata<DoubleScalarReward>,
//            EmptySearchNodeMetadata<ActionType, DoubleScalarReward>> transitionUpdater = new ArgmaxDiscountEstimatedRewardTransitionUpdater<>(discountFactor);

        NodeTransitionUpdater<
            ActionType,
            DoubleScalarReward,
            EmptyStateActionMetadata<DoubleScalarReward>,
            EmptySearchNodeMetadata<ActionType, DoubleScalarReward>> transitionUpdater = new UniformAverageDiscountEstimateRewardTransitionUpdater<>(discountFactor, rewardAggregator);

        NodeEvaluationSimulator<
            ActionType,
            DoubleScalarReward,
            DoubleVectorialObservation,
            EmptyStateActionMetadata<DoubleScalarReward>,
            EmptySearchNodeMetadata<ActionType, DoubleScalarReward>,
            State<ActionType, DoubleScalarReward, DoubleVectorialObservation>> rewardSimulator = new MonteCarloSimulator<>(100, discountFactor, random, rewardAggregator);

        EpisodeAggregator episodeAggregator = new EpisodeAggregator(
            1,
            10,
//             new UniformRandomWalkPolicy(random),
//            immutableState -> new ImmutableTuple<>(
//                new BfsPolicy(
//                    random,
//                    100,
//                    immutableState,
//                    transitionUpdater,
//                    rewardSimulator),
//                immutableState),
//            new EnvironmentPolicy(random),
            immutableState -> new ImmutableTuple<>(
                new EGreedyPolicy(
                    random,
                    50,
                    0.1,
                    immutableState,
                    transitionUpdater,
                    rewardSimulator),
                immutableState),
                new EnvironmentPolicy(random),
            initialStateInstanceFactory);
        List<List<Double>> rewardHistory = episodeAggregator.runSimulation(new String(Files.readAllBytes(Paths.get(file.getAbsolutePath()))));
        printChart(rewardHistory);
    }

    public static void printChart(List<List<Double>> rewardHistory) {
        LinkedList<Double> average = new LinkedList<>();
        for (int j = 0; j < rewardHistory.stream().mapToInt(List::size).max().getAsInt(); j++) {

            Double jThSum = 0.0;
            int count = 0;
            for (List<Double> aRewardHistory : rewardHistory) {
                if (aRewardHistory.size() > j) {
                    jThSum += aRewardHistory.get(j);
                    count++;
                }
            }
            average.add(jThSum / count);
        }

        LinkedList<Double> runningSum = new LinkedList<>();
        for (Double value : average) {
            if(runningSum.isEmpty()) {
                runningSum.add(value);
            } else {
                runningSum.add(runningSum.getLast() + value);
            }
        }
        List<List<Double>> datasets = new ArrayList<>();
        datasets.add(average);
        datasets.add(runningSum);
        ChartBuilder.chart(new File("average"), datasets, "datasets");
    }
}
