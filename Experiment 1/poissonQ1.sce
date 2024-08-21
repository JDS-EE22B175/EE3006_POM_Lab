n = 100000

//Plot the distfun poisson distribution function
//you need to install distfun from Atoms module 
scf();
mu=4; //mean mu
r1 = distfun_poissrnd(mu,[1,n]); //generate 100000 events with mu=4 in 1-D array r1
histplot(200,r1, normalization=%f);

meanX = 0
for i = 1 : n
	meanX = meanX + r1(i)
end

meanX = meanX/n

stdDev = 0
meanCount = 0
for i = 1 : n
	stdDev = stdDev + (r1(i) - meanX) ^ 2
    
    if (r1(i) == meanX) then
    	meanCount = meanCount + 1
    end
end

stdDev = stdDev / n
stdDev = stdDev ^ 0.5
meanX = meanX // Prints meanX
meanCount = meanCount/n // Fraction that occurs at th mean value

xbar = mean(r1)
std = stdev(r1)
