// Number of events
n = 10000;

// generates a 1-dimensional array rNo of 100000 normally distributed events
n1=rand(n,1,"normal");
n2=rand(n,1,"normal");
n3=rand(n,1,"normal");
n4=rand(n,1,"normal");
n5=rand(n,1,"normal");
n6=rand(n,1,"normal");
n7=rand(n,1,"normal");
n8=rand(n,1,"normal");
n9=rand(n,1,"normal");
n10=rand(n,1,"normal");


z = (n1+n2+n3+n4+n5+n6+n7+n8+n9+n10)./10;

histplot(100, z, normalization=%t);
std = stdev(z);
expectedStdDev = 1/sqrt(10);
disp("Standard Deviation of z must be 1/sqrt(10), which is " + string(expectedStdDev));
disp("Calculated Standard Deviation is " + string(std));