% I am tryting to find the optimum value of gamma using the dragOptimization function & store this in the variable gam.
% I plan to use the dragSolution function to get and plot the solution along with the data. 

tGiven = [0, 0.1, 0.3, 0.5, 0.8, 0.9, 1.0, 1.5];
vGiven = [0, 0.96, 2.66, 3.76, 4.59, 4.77, 4.83, 5.06];

gam = dragOptimization(tGiven, vGiven);

[tSol, vSol] = dragSolution(gam, 2);

fO = figure(1);
hold on;

plot(tGiven, vGiven, 'ro');

plot(tSol, vSol, 'b');

hold off;
exactMatch = 0;
