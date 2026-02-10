% Consider the initial value problem dy / dt = e^t - t, y(0) = 1 which has solution y(t) = e^t - t^2 / 2. Now I want to use the rungeKuttaMethod function to estimate this solution at T_f = 2 for several different step sizes. I will use this to attempt to find the order of the Runge-Kutta Method. 
% For each of these step-sizes, I used the rungeKuttaMethod function to compute a numerical approximation to the solution and find the error between this and the actual solution. 
% In the orderApprox variable, I put the parameter given that would correspond to the order of this method. In orderExact, I rounded this result to get the order of Euler's method.   
% The rungeKuttaMethod function is [t,y] =  rungeKuttaMethod(f, dt, Tf, tI, yI), where f must be an anonymous function of two variables t and y.
% Definition of order of a numerical method:
% For a numerical method, the error in numerical approximation changes as a function of the step-size. The order of a numerical method is the power  so that
% where E is the error in numerical approximation, C is a constant, and h is the step-size. The idea behind this is if we halve the step-size, the error is decreased by a factor of . If this statement holds true, then
% which is a straight-line in a log-log plot, and the slope of this line is the value . 

f = @(t,y) exp(t) - t;
fSol = @(t) exp(t) - t.^2/2;

stepSize = [0.1, 0.07, 0.05, 0.02, 0.01, 0.007, 0.005, 0.003];
error = zeros(1,length(stepSize));

Tf = 2;
t0 = 0;
y0 = 1;

for ind = 1:length(stepSize)
    dt = stepSize(ind);
    [t, y] = rungeKuttaMethod(f, dt, Tf, t0, y0);
    error(ind) = abs(y(end) - fSol(2));
end

plot(log(stepSize), log(error));

y = log(error)';
x = log(stepSize)';
xMat = [ones(length(stepSize), 1), x];
bestFit = xMat\y;
slope = bestFit(2);
intercept = bestFit(1);

slope = bestFit(2);
intercept = bestFit(1);

orderApprox = slope;
orderExact = round(orderApprox);

disp(['The order of the Runge-Kutta Method is ', num2str(orderExact), '.']);

