% I'm looking at various physical problems that can be modeled using differential equations. 
% This first physical problem is a object falling with drag. We are assuming that the velocity of an object in free-fall follows the differential equation
% where it is the downward velocity. Assume that an object is dropped 


tGiven = [0, 0.1, 0.3, 0.5, 0.8, 0.9, 1.0, 1.5];
vGiven = [0, 0.96, 2.66, 3.76, 4.59, 4.77, 4.83, 5.06];

gam1 = 0.05;

[t1, v1] = dragSolution(gam1,2);
fO = figure(1);
hold on;
plot(tGiven, vGiven, 'ro');

plot(t1, v1, 'b');
hold off;

gam2 = 0.2;

[t2, v2] = dragSolution(gam2, 2);
fT = figure(2);
plot(tGiven, vGiven, 'ro');
hold on;

plot(t2, v2, 'b');
hold off;

gamInc = 2;

linesTest = findobj('Parent',get(fO, 'CurrentAxes'),'Type','Line');
propTestOne = get(linesTest(1),{'Color'});
linesTest = findobj('Parent',get(fT, 'CurrentAxes'),'Type','Line');
propTestTwo = get(linesTest(1),{'Color'});

function [t,v] = dragSolution(gamma, Tf)
f = @(t,v) 9.8 - gamma.*v.^2;
[t,v] = ode45(f, [0, Tf], 0);
end
