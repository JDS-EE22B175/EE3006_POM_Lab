// Number of events
n = 10000;

// generates a 1-dimensional array r(n) of 100000 normally distributed events
r=rand(n,1,"normal"); 

//clear and use the current graphic screen
scf();

//plot the histgram of r(n) values with 100 bins, set normalization flag true
//set this flag to false or %f to see the actual number of events in each bin!
histplot(100,r,normalization=%t);

//find max and min values in r(n)
Xmax = max(r);
Xmin = min(r);

//generate a linear array x(n) of 100 points from min to max values
x = linspace(Xmin,Xmax,100)';

//make an array y(n) of expected ideal normalized values mean=0, std=1
y = exp(-x.^2/2)/sqrt(2*%pi);

//plot on prev graphics screen for comparison
plot2d(x,y,style=5)

meanX = 0;
for i = 1 : n
	meanX = meanX + r(i);
end

meanX = meanX/n;

stdDev = 0;
for i = 1 : n
	stdDev = stdDev + (r(i) - meanX) ^ 2;
end

stdDev = stdDev / n;
stdDev = stdDev ^ 0.5;
disp("Mean is " + string(meanX));
disp("Standard Deviation is " + string(stdDev));

//built-in mean and stdev
//type in console xbar and std to see their values
xbar=mean(r)
std=stdev(r)