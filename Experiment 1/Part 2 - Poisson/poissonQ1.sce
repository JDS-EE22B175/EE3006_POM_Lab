//Plot the distfun poisson distribution function
//you need to install distfun from Atoms module 
scf();
n = 100000;
mu=4; //mean mu
r1 = distfun_poissrnd(mu,[1,n]); //generate 100000 events with mu=4 in 1-D array r1
histplot(200,r1, normalization=%f);
xtitle("Poisson RV with mean = " + string(mu));

avg = mean(r1);
stdDev = stdev(r1);

fracAtMean = 0;
for i = 1 : n
	if (r1(i) == mu) then
    	fracAtMean = fracAtMean + 1;
	end
end
fracAtMean = fracAtMean / n;

disp("The calculated Mean is " + string(avg) + ", and the expected mean is " + string(mu));
disp("The calculated Standard Deviation is " + string(stdDev) + ", and the expected Standard Deviation is " + string(sqrt(mu)));
disp("The fraction of elements at the expected mean " + string(mu) + " is " + string(fracAtMean) + " and the expected value of the fraction of elements at the mean is " + string(0.195367));