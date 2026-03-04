tVals = linspace(0, 6, 1000);

f1 = secondOrderSolverNum(1, 5, 6, 0, 0, 2, 1);
f2 = secondOrderSolverNum(1, 5, 6, 0, 0, 2, -15);

fO = figure(1);
hold on;

plot(tVals, f1(tVals), 'b');
plot(tVals, f2(tVals), 'r');

hold off;

linesTest = findobj('Parent',get(fO, 'CurrentAxes'),'Type','Line');
propTestOne = get(linesTest(1),{'Color','XData','YData'});
propTestTwo = get(linesTest(2),{'Color','XData','YData'});
