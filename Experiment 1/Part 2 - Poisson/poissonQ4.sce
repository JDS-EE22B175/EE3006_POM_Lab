n = 10; // Number of trials
p = 0.2; // Probability of success in each trial

countN = 100000;

// Generate 100,000 binomial-distributed random numbers using grand
r_binom = grand(1, countN, "bin", n, p);

// Calculate the mean of the generated binomial random numbers
calculated_mean = mean(r_binom);

// Calculate the standard deviation of the generated binomial random numbers
calculated_std = stdev(r_binom);

// Expected mean and standard deviation
expected_mean = n * p;
expected_std = sqrt(n * p * (1-p));

disp("Calculated Mean: " + string(calculated_mean));
disp("Expected Mean np: " + string(expected_mean));
disp("Calculated Standard Deviation: " + string(calculated_std));
disp("Expected Standard Deviation sqrt(np(1-p)): " + string(expected_std));

// Plot histogram
scf();
histplot(100, r_binom, normalization=%f, style = 16);
xtitle("Binomial Distribution with (n, p) = (" + string(n) + ", " + string(p) + ")");