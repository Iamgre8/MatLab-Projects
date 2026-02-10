% Consider the initial value problem
% dy / dt = e^t - t, y(0) = 1 
% which has solution y(t) = e^t - t^2 / 2

% I Used the eulerMethod function to estimate this solution at Tf = 2 using a time step of 0.2 . After doing that, I computed the error, which is the absolute value of the difference between the numerical approximation at t=2 and the actual solution value at t=2. 

% The eulerMethod function is [t,y] =  eulerMethod(f, dt, Tf, tI, yI), where f must be an anonymous function of two variables t and y.
% To get the last value of an array, I used y(end). In the case of Euler's method, this will give the approximate value at t = 2. This value can then be compared to (subtracted from) y(2) when written as a function in Matlab. 

f = @(t,y) exp(t) - t;
fSol = @(t) exp(t) - t.^2/2;

dt = 0.2;
Tf = 2;
t0 = 0;
y0 = 1;

[tE1, yE1] = eulerMethod(f, dt, Tf, t0, y0);
numError = abs(yE1(end) - fSol(2));
