countN = 100000;

scf();

subplot(2,1,1);
// Generate 100,000 binomial-distributed random numbers using grand
n = 200; // Number of trials
p = 0.05; // Probability of success in each trial
r_binom = grand(1, countN, "bin", n, p);

// Plot histogram
x = histplot(100, r_binom, normalization=%t, style = 16);
xtitle("Binomial Distribution with (n, p) = (" + string(n) + ", " + string(p) + ")");
xMax = max(x);
mu = n*p; // Expected Probability
sigma = sqrt(n*p*(1-p)); // Expected Standard Deviation

x = linspace(0,20,400);
y = (1/(sigma*sqrt(2*%pi)))*exp(-(((x-mu)/sigma).^2)/2);
yMax = max(y);
y = y.*(xMax/yMax);
plot(x, y, style = 5);
legend(['Binomial Distribution','Gaussian Distribution']);


subplot(2,1,2);
// Generate 100,000 binomial-distributed random numbers using grand
n = 2000; // Number of trials
p = 0.005; // Probability of success in each trial
r_binom = grand(1, countN, "bin", n, p);

// Plot histogram
x = histplot(100, r_binom, normalization=%t, style = 16);
xtitle("Binomial Distribution with (n, p) = (" + string(n) + ", " + string(p) + ")");
xMax = max(x);
mu = n*p; // Expected Probability
sigma = sqrt(n*p*(1-p)); // Expected Standard Deviation

x = linspace(0,20,400);
y = (1/(sigma*sqrt(2*%pi)))*exp(-(((x-mu)/sigma).^2)/2);
yMax = max(y);
y = y.*(xMax/yMax);
plot(x, y, style = 5);
legend(['Binomial Distribution','Gaussian Distribution']);