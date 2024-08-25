r = rand(10000,1,"uniform");

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

//built-in mean and stdev
//type in console xbar and std to see their values
xbar=mean(r)
std=stdev(r)

pdfR = 1; // 1/(b - a)

disp("Expected Mean is " + string(0.5));
disp("Expected Standard Deviation is " + string(0.288675)); // (b - a)/sqrt(12)
disp("PDF of uniform distribution is " + string (pdfR));