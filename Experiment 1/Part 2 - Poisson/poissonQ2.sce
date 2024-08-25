//Plot the distfun poisson distribution function
//you need to install distfun from Atoms module 
scf();

n = 100000;
mu1=4; //mean mu of r1
mu2=6; //mean mu of r2
r1 = distfun_poissrnd(mu1,[1,n]); //generate 100000 events with mu1 in 1-D array r1
r2 = distfun_poissrnd(mu2,[1,n]); //generate 100000 events with mu2 in 1-D array r2

r = r1 + r2; // Sum of 2 Poisson RVs
histplot(400,r, normalization=%f);
xtitle("Sum of 2 Poisson RVs");

newMean = mean(r);
newStdDev = stdev(r);

disp("The calculated Mean is " + string(newMean) + ", and the expected mean is μ1 + μ2 = " + string(mu1 + mu2));
disp("The calculated Standard Deviation is " + string(newStdDev) + ", and the expected Standard     Deviation is sqrt(μ1+μ2) = " + string(sqrt(mu1 + mu2)));