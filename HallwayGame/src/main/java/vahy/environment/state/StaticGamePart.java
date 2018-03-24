package vahy.environment.state;

import vahy.utils.ArrayUtils;

import java.util.Random;

public class StaticGamePart {

    private final Random random;
    private final double[][] trapProbabilities;
    private final boolean[][] walls;
    private final double defaultStepPenalty;
    private final double noisyMoveProbability;

    public StaticGamePart(Random random, double[][] trapProbabilities, boolean[][] walls, double defaultStepPenalty, double noisyMoveProbability) {
        checkInputArguments(trapProbabilities, walls);
        this.random = random;
        this.trapProbabilities = trapProbabilities;
        this.walls = walls;
        this.defaultStepPenalty = defaultStepPenalty;
        this.noisyMoveProbability = noisyMoveProbability;
    }

    private void checkInputArguments(double[][] trapProbabilities, boolean[][] walls) {
        if(!ArrayUtils.hasRectangleShape(trapProbabilities)) {
            throw new IllegalArgumentException("Trap probabilities has no rectangle type");
        }
        if(!ArrayUtils.hasRectangleShape(walls)) {
            throw new IllegalArgumentException("Walls has no rectangle type");
        }
        if(trapProbabilities.length != walls.length || trapProbabilities[0].length != walls[0].length) {
            throw new IllegalArgumentException("Traps and walls have different dimensions");
        }
        for (int i = 0; i < walls.length; i++) {
            for (int j = 0; j < walls[i].length; j++) {
                if(trapProbabilities[i][j] != 0.0 && walls[i][j]) {
                    throw new IllegalArgumentException("Traps and walls are in cover which is not possible");
                }
            }
        }
    }

    public Random getRandom() {
        return random;
    }

    public double[][] getTrapProbabilities() {
        return trapProbabilities;
    }

    public boolean[][] getWalls() {
        return walls;
    }

    public double getDefaultStepPenalty() {
        return defaultStepPenalty;
    }

    public double getNoisyMoveProbability() {
        return noisyMoveProbability;
    }
}