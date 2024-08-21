// Number of events
n = 10000;

// generates a 1-dimensional array rNo of 100000 normally distributed events
r=rand(n,1,"normal");

//clear and use the current graphic screen
scf();

//plot the histgram of rNo values with 100 bins, set normalization flag true
//set this flag to false or %f to see the actual number of events in each bin!
histplot(100,r,normalization=%t);

//find max and min values in rNo
Xmax = max(r);
Xmin = min(r);

//generate a linear array xNo of 100 points from min to max values
x = linspace(Xmin,Xmax,100)';

//make an array yNo of expected ideal normalized values mean=0, std=1
y = exp(-x.^2/2)/sqrt(2*%pi);

//plot on prev graphics screen for comparison
plot2d(x,y,style=5)

legend(["Generated Gaussian Distribution", "Expected Distribution"], "lower_caption");
xtitle("Generated Gaussian Distribution and the Expected Distribution");

meanX = 0;
meanK = 0;
stdDevK = 0;
k = 1; // Arbitrary Value

for i = 1 : n
meanK = meanK + (r(i) - k);
stdDevK = stdDevK + (r(i) - k)^2;
end

meanK = meanK/n + k;
stdDevK = stdDevK/n;
stdDevK = stdDevK - (meanK - k)^2;
stdDevK = sqrt(stdDevK);

disp("Mean calculated about k = " + string(k) + " and adjusted is " + string(meanK));
disp("Standard Deviation calculated about k = " + string(k) + " and adjusted is " + string(stdDevK));

//built-in mean and stdev
//type in console xbar and std to see their values
xbar=mean(r)
std=stdev(r)