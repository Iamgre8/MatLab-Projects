% Consider the initial value problem dy / dt = e^t - t, y(0) = 1 which has solution y(t) = e^t - t^2 / 2. Now, I want to use the Euler method function to estimate this solution for several different step sizes. I will use this to determine the order of Euler's Method. 
% The list of step sizes are given in the template below, as well as a skeleton with a few pieces of code. The code is set up to run a for loop over each step size in the array. For each of these step-sizes, I used the Euler method function to compute a numerical approximation to the solution and find the error between this and the actual solution.
% In the orderApprox variable,I put the parameter given that would correspond to the order of this method. In orderExact, I will round this result 
% E is the error in numerical approximation, C is a constant, and h is the step-size. The idea behind this is if we halve the step-size, the error is decreased by a factor of 2^a. If this statement holds true, then
% ln(E) = ln(C) + aln(h)
% which is a straight-line in a log-log plot, and the slope of this line is the value a: f = @(t,y) exp(t) - t;

fSol = @(t) exp(t) - t.^2/2;

f = @(t,y) exp(t) - t;
fSol = @(t) exp(t) - t.^2/2;

stepSize = [0.1, 0.05, 0.01, 0.005, 0.001, 0.0005, 0.0001, 0.00005];
error = zeros(1,length(stepSize));

Tf = 2;
t0 = 0;
y0 = 1;

for ind = 1:length(stepSize)
    dt = stepSize(ind);
    [t, y] = eulerMethod(f, dt, Tf, t0, y0);
    error(ind) = abs(y(end) - fSol(2));
end

plot(log(stepSize), log(error));

y = log(error)';
x = log(stepSize)';
xMat = [ones(length(stepSize), 1), x];
bestFit = xMat\y;
slope = bestFit(2);
intercept = bestFit(1);

orderApprox = slope;
orderExact = round(orderApprox);

disp(['The order of Euler''s Method is ', num2str(orderExact), '.']);
