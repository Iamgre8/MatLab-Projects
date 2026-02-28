tData = [0, 0.2, 0.3, 0.5, 0.7, 0.9, 1.2, 1.4, 1.6, 1.9];
vData = [0, 1.81, 2.51, 3.38, 3.79,  4.00, 4.03, 4.04, 4.06, 4.05];

gam = dragOptimization(tData, vData);

if abs(gam - 0.6) < abs(gam - 0.12)
    droppedGam = 0.6;
else
    droppedGam = 0.12;
end

function [t,v] = dragSolution(gamma, Tf)
f = @(t,v) 9.8 - gamma.*v.^2;
[t,v] = ode45(f, [0, Tf], 0);
end

function [v] = dragSolutionVals(gamma, tVals)
f = @(t,v) 9.8 - gamma.*v.^2;
sol = ode45(f, [0, max(tVals)], 0);
v = deval(sol, tVals);
end

function optGam = dragOptimization(tVals, vVals)
testVals = @(gamma) dragSolutionVals(gamma, tVals);
testError = @(gamma) sum((testVals(gamma) - vVals).^2);
optGam = fminbnd(@(a) testError(a), 0, 1);
end
