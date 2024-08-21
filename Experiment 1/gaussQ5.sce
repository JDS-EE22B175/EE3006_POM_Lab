scf();

subplot(2,2,1)
r = rand(10000,1,"uniform");
pdfRCalc = histplot(100,r,normalization=%t);

subplot (2,2,2)
t = rand(10000,1,"uniform");
pdfTCalc = histplot(100,t,normalization=%t);
//clear and use the current graphic screen

z = r+t;

pdfZCalc = convol(pdfRCalc, pdfTCalc);
normalizingFactor = max(pdfZCalc);
pdfZCalc = pdfZCalc./normalizingFactor
//plot the histgram of rNo values with 100 bins, set normalization flag true
//set this flag to false or %f to see the actual number of events in each bin!
subplot(2,2,3)
histplot(100,z,normalization=%t);

//find max and min values in rNo
Zmax = max(z);
Zmin = min(z);

//generate a linear array xNo of 199 points from min to max values
x = linspace(Zmin,Zmax,199)';


//plot on prev graphics screen for comparison

plot2d(x,pdfZCalc,style=5)

//built-in mean and stdev
//type in console xbar and std to see their values
xbar=mean(r)
std=stdev(r)

pdfR = 1; // 1/(b - a)

disp("Expected Mean is " + string(0.5));
disp("Expected Standard Deviation is " + string(0.288675)); // (b - a)/sqrt(12)
disp("PDF of uniform distribution is " + string (pdfR));