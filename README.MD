Reinforcement Learning of Risk-Averse Policies in Partially Observable Markov Decision Processes

The paper implementation itself is in ".../MasterThesis/PaperSandbox/src/main/java/vahy/paperGenerics/"

The Java-CLP libraries are provided and the whole program was tested on Windows OS and Linux OS.

How to start:
if any problems encountered, please, contact me on snurkabill@gmail.com

1. Install JRE 13+ and latest Maven build tool on your system
2. Clone this repository
3. In root directory (.../MasterThesis/), execute command `mvn clean install -Dcheckstyle.skip -DskipTests -U`. It will build the whole project.
4. Prepared HallwayGame examples can be found in `.../MasterThesis/HallwayGame/src/main/java/vahy/solutionExamples/` path
5. To execute some example, in directory `../MasterThesis/HallwayGame/` execute command `mvn exec:java -Dexec.mainClass="vahy.original.solutionExamples.<name of the class with main() to be executed>"`
    - example: `mvn exec:java -Dexec.mainClass="vahy.original.solutionExamples.Benchmark01Solution"`
    - the algorithm parameters and hyper-parameters are not necessarily optimal
6. The training will start. For some benchmarks, it can take time.
7. When a logging is set to `Info` level (check logback.xml for detailed logging), four windows will pop up showing training performance over time.
8. After evaluation is done, results are printed into info level log.





experimental parameters:


```tex

\begin{itemize}
    \item cpuct
    \begin{itemize}
        \item A parameter which represents constant $c$ from MCTS.
    \end{itemize}
    \item search tree update strategy
    \begin{itemize}
        \item FixedUpdateCountTreeConditionFactory - updates a search tree $n$ times per step
        \item HybridTreeUpdateConditionFactory - in the first step of the episode updates a search tree $n$ times or until given time is reached. Every next step is bounded with another, usually shorter, time interval.
    \end{itemize}

    \item discount factor
    \begin{itemize}
        \item parameter $\gamma$. interval (0, 1]
    \end{itemize}
    \item batch episode count
    \begin{itemize}
        \item Number of episodes which are sampled in one master-cycle of the Ralf0 algorithm.
    \end{itemize}
    \item stage count
    \begin{itemize}
        \item Master-cycle count of the Ralf0 algorithm.
    \end{itemize}
    \item exploration constant supplier
    \begin{itemize}
        \item A function providing a probability of exploration for each exploration call requested by policy $\pi$.
        \item If returned value is 1, the exploration move is played with probability 1.
    \end{itemize}
    \item temperature supplier
    \begin{itemize}
        \item A function providing temperature for exploration based on boltzmann approach.
        \item Returning value should be from [0, inf).
    \end{itemize}
    \item trainer algorithm
    \begin{itemize}
        \item Sets an episodic data aggregation algorithm for training a predictor.
        \item possible values: FIRST\_VISIT\_MC, EVERY\_VISIT\_MC, REPLAY\_BUFFER
    \end{itemize}

    \item replay buffer size
    \item maximal step count bound
    \begin{itemize}
        \item Sets maximal agent's actions allowed in environemnt.
        \item A very important parameter when the environment allows infinite cycling.
    \end{itemize}

    \item total risk allowed
    \item existing flow inference strategy
    \begin{itemize}
        \item Sets an action playing strategy when the optimal flow is found.
        \item MAX\_UCB\_VALUE, MAX\_UCB\_VISIT, SAMPLE\_OPTIMAL\_FLOW
    \end{itemize}

    \item non-existing flow inference strategy
    \begin{itemize}
        \item Sets an action playing strategy when the optimal flow is not found.
        \item MAX\_UCB\_VALUE, MAX\_UCB\_VISIT
    \end{itemize}

    \item existing flow exploration strategy
    \begin{itemize}
        \item Sets an exploration-sensitive action playing strategy when the optimal flow is found.
        \item SAMPLE\_OPTIMAL\_FLOW, SAMPLE\_OPTIMAL\_FLOW\_BOLTZMANN\_NOISE
    \end{itemize}

    \item non existing flow exploration strategy
    \begin{itemize}
        \item Sets an exploration-sensitive action playing strategy when the optimal flow is found.
        \item SAMPLE\_UCB\_VALUE, SAMPLE\_UCB\_VISIT
    \end{itemize}

    \item subtree risk calculator
    \begin{itemize}
        \item Sets subtree risk calculator
        \item FLOW\_SUM, PRIOR\_SUM, MINIMAL\_RISK\_REACHABILITY, ROOT\_PREDICTION
    \end{itemize}

    \item flow optimizer
        \begin{itemize}
        \item Sets a probability flow optimizer
        \item HARD, SOFT, HARD\_HARD, HARD\_SOFT
    \end{itemize}

    \item eval episode count
    \begin{itemize}
        \item Parameter specifies how many evaluating episodes without exploration should be performed.
    \end{itemize}

    \item learning rate
    \begin{itemize}
        \item Parameter adjusting speed of training a predictor.
    \end{itemize}
\end{itemize}
 
```


