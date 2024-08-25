// Number of events
n = 10000;

// generates a 1-dimensional array rNo of 100000 normally distributed events
r1=rand(n,1,"uniform");
r2=rand(n,1,"uniform");
r3=rand(n,1,"uniform");
r4=rand(n,1,"uniform");
r5=rand(n,1,"uniform");

t1=rand(n,1,"normal");
t2=rand(n,1,"normal");
t3=rand(n,1,"normal");
t4=rand(n,1,"normal");
t5=rand(n,1,"normal");

x=(r1+r2+r3+r4+r5+t1+t2+t3+t4+t5)./10;

histplot(100,x,normalization=%t);
xtitle('Sum of 5 Gaussian and 5 Uniform Distributions')