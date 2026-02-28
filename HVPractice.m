tData = [0, 1, 3, 5, 8, 12, 15, 21];
yData = [50, 64, 104, 142, 174, 186, 188, 188];

aInit = 3;
KInit = 200;
rhoInit = 5;

[t1, y1] = harvestingSolution(aInit, KInit, rhoInit, 50, 60);

fO = figure(1);
hold on;
plot(tData, yData, 'ro');

plot(t1, y1, 'b-');

title('Default Parameters');
hold off;

aAdjust = 4;

[t2, y2] = harvestingSolution(aAdjust, KInit, rhoInit, 50, 60);

fT = figure(2);
hold on;
plot(tData, yData, 'ro');

plot(t2, y2, 'b-');

title('a Adjustment');
hold off;

KAdjust = 250;

[t3, y3] = harvestingSolution(aInit, KAdjust, rhoInit, 50, 60);

fH = figure(3);
hold on;
plot(tData, yData, 'ro');

plot(t3, y3, 'b-');
title('K Adjustment');
hold off;


rhoAdjust = 8;

[t4, y4] = harvestingSolution(aInit, KInit, rhoAdjust, 50, 60);

fF = figure(4);
hold on;
plot(tData, yData, 'ro');
plot(t4, y4, 'b-');

title('rho Adjustment');
hold off;

aEffect = 3;      
KEffect = 1;      
rhoEffect = 2;    
canGuess = 0;

linesTest = findobj('Parent',get(fO, 'CurrentAxes'),'Type','Line');
propTestOne = get(linesTest(1),{'Color'});
linesTest = findobj('Parent',get(fT, 'CurrentAxes'),'Type','Line');
propTestTwo = get(linesTest(1),{'Color'});
linesTest = findobj('Parent',get(fH, 'CurrentAxes'),'Type','Line');
propTestThree = get(linesTest(1),{'Color'});
linesTest = findobj('Parent',get(fF, 'CurrentAxes'),'Type','Line');
propTestFour = get(linesTest(1),{'Color'});
allowableParams = aInit*aAdjust*(aInit - aAdjust)*KInit*KAdjust*(KInit-KAdjust)*rhoInit*rhoAdjust*(rhoInit-rhoAdjust) == 0;

function [t,y] = harvestingSolution(a, K, rho, y0, Tf)
f = @(t,y) a.*y.*(K - y)/10^3 - rho;
[t,y] = ode45(f, [0, Tf], y0);
end

function [y] = harvestingSolutionVals(a, K, rho, y0, tVals)
f = @(t,y) a.*y.*(K - y)/10^3 - rho;
sol = ode45(f, [0, max(tVals)], y0);
y = deval(sol, tVals);
end

function optParam = harvestingOptimization(tVals, yVals, y0)
testVals = @(a, K, rho) harvestingSolutionVals(a, K, rho, y0, tVals);
testError = @(a, K, rho) sum((testVals(a, K, rho) - yVals).^2);
optParam = fmincon(@(x) testError(x(1), x(2), x(3)),[1; 300; 10],...
    [], [], [],[], [1;100;0], [5; 1000; 20]);
end
