fO = figure(1);
hold on;

secondOrderSolverPlot(4, 20, 16, 0, 0, 5, 0, 20);
secondOrderSolverPlot(4, 1, 16, 0, 0, 5, 0, 20);
secondOrderSolverPlot(4, 2, 16, 0, 0, 5, 0, 20);

hold off;
h = get(gca, 'Children');
set(h(1), 'Color', 'r');
set(h(2), 'Color', 'k');
set(h(3), 'Color', 'b');
legend('Eq1', 'Eq2', 'Eq3');
title('Fluid Comparison');

AirEqn = 2;
WaterEqn = 3;
HoneyEqn = 1;
