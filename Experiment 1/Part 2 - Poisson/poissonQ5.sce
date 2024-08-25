nTrials = 10; // Number of trials for both binomial distributions
p1 = 0.2; // Probability of success for the first binomial distribution
p2 = 0.8; // Probability of success for the second binomial distribution

n = 100000;

// Generate 100,000 binomial-distributed random numbers with p1 and p2
rBinom1 = grand(1, n, "bin", nTrials, p1);
rBinom2 = grand(1, n, "bin", nTrials, p2);

subplot(3,1,1);
histplot(100, rBinom1, normalization=%t);
xlabel("Binomial Variable with p = " + string(p1));
ylabel("Frequency");

subplot(3,1,2);
histplot(100, rBinom2, normalization=%t);
xlabel("Binomial Variable with p = " + string(p2));
ylabel("Frequency");
// Sum of the two binomial-distributed random variables
rSum = rBinom1 + rBinom2; // Binomial only if p1 == p2

// Proof - https://math.stackexchange.com/questions/1176385/sum-of-two-independent-binomial-variables

// Plot histogram of the sum
subplot(3,1,3);
histplot(100, rSum, normalization=%t);
xlabel("Sum of Two Binomial Variables (Not Binomial)");
ylabel("Frequency");

// Calculate the mean and standard deviation of the sum
calculatedMeanSum = mean(rSum);
calculatedStdSum = stdev(rSum);

// Expected mean and standard deviation if the sum were binomial
// Note: This is only for comparison, as the sum is not truly binomially distributed
expectedMeanSum = nTrials * (p1 + p2);
expectedStdSum = sqrt(nTrials * p1 * (1-p1) + nTrials * p2 * (1-p2));

expBinom = grand(1, n, "bin", 2*nTrials, (p1+p2)/2);
histplot(100, expBinom, normalization=%t, style=6);

legend(['Sum of Binomials', 'Binomial with (n, p) = (' + string(2*nTrials) + ", " + string((p1+p2)/2) + ")"], "upper_caption");


disp("Calculated Mean of Sum: " + string(calculatedMeanSum));
disp("Expected Mean of Sum (if binomial): " + string(expectedMeanSum));
disp("Calculated Standard Deviation of Sum: " + string(calculatedStdSum));
disp("Expected Standard Deviation of Sum (if binomial): " + string(expectedStdSum));
disp("Sum of two Binomials is a Binomial if the probabilities are the same");