//Plot the distfun poisson distribution function
//you need to install distfun from Atoms module 
scf();
n = 100000;

subplot(2,2,1);
mu=30; //mean mu
sigma = sqrt(mu); // Standard Deviation sigma
r1 = distfun_poissrnd(mu,[1,n]); //generate 100000 events with mu in 1-D array r1

histplot(200,r1, normalization=%t,style=16);
xtitle("Gaussian RV over a Poisson RV with mean = " + string(mu));

rMax = max(r1);
rMin = min(r1);


x = linspace(rMin, rMax, 200);
y = (1/(sigma*sqrt(2*%pi)))*exp(-(((x-mu)/sigma).^2)/2);
plot(x, y, style = 5);
legend(['Poisson Distribution', 'Gaussian Distribution'], "lower_caption");

subplot(2,2,2);
mu=100; //mean mu
sigma = sqrt(mu); // Standard Deviation sigma
r1 = distfun_poissrnd(mu,[1,n]); //generate 100000 events with mu in 1-D array r1

histplot(200,r1, normalization=%t,style=16);
xtitle("Gaussian RV over a Poisson RV with mean = " + string(mu));

rMax = max(r1);
rMin = min(r1);


x = linspace(rMin, rMax, 200);
y = (1/(sigma*sqrt(2*%pi)))*exp(-(((x-mu)/sigma).^2)/2);
plot(x, y, style = 5);
legend(['Poisson Distribution', 'Gaussian Distribution'], "lower_caption");

subplot(2,2,3);
mu=10000; //mean mu
sigma = sqrt(mu); // Standard Deviation sigma
r1 = distfun_poissrnd(mu,[1,n]); //generate 100000 events with mu in 1-D array r1

histplot(200,r1, normalization=%t,style=16);
xtitle("Gaussian RV over a Poisson RV with mean = " + string(mu));

rMax = max(r1);
rMin = min(r1);


x = linspace(rMin, rMax, 200);
y = (1/(sigma*sqrt(2*%pi)))*exp(-(((x-mu)/sigma).^2)/2);
plot(x, y, style = 5);
legend(['Poisson Distribution', 'Gaussian Distribution'], "lower_caption");

subplot(2,2,4);
mu=100000; //mean mu
sigma = sqrt(mu); // Standard Deviation sigma
r1 = distfun_poissrnd(mu,[1,n]); //generate 100000 events with mu in 1-D array r1

histplot(200,r1, normalization=%t,style=16);
xtitle("Gaussian RV over a Poisson RV with mean = " + string(mu));

rMax = max(r1);
rMin = min(r1);


x = linspace(rMin, rMax, 200);
y = (1/(sigma*sqrt(2*%pi)))*exp(-(((x-mu)/sigma).^2)/2);
plot(x, y, style = 5);
legend(['Poisson Distribution', 'Gaussian Distribution'], "lower_caption");