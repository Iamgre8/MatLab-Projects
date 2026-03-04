m = [1, 1, 1];
gamma = [6*sqrt(2)/5, 1, 8];
k = [4, 9, 25];
F0 = [12, 3, 10];
colors = ['b', 'k', 'r'];
numOmega = 1000;
nT = 1000;
tVals = linspace(0, 100, nT);

fO = figure(1);
axO = axes;
hold on;
fT = figure(2);
axT = axes;
hold on;
for ind = 1:length(m)
    omega0 = sqrt(k(ind)/m(ind));
    omegaVals = linspace(0.1, 5*omega0, numOmega);
    ampVals = zeros(1, numOmega);
    for i=1:length(omegaVals)
        fTest = secondOrderSolverNum(m(ind), gamma(ind), k(ind), F0(ind), omegaVals(i), 0, 0);
        ampVals(i) = max(fTest(tVals(nT/2:end)))/(F0(ind)/k(ind));
    end
    plot(axO, omegaVals/omega0, ampVals, colors(ind));
    plot(axT, omegaVals(100:210)/omega0, ampVals(100:210), colors(ind));
end
figure(1)
legend({'Eq1', 'Eq2', 'Eq3'})
figure(2)
legend({'Eq1', 'Eq2', 'Eq3'}, 'Location', 'northwest')
hold off;

figure(3);
omega1 = 1.6;
secondOrderSolverPlot(m(1), gamma(1), k(1), F0(1), omega1, 0, 0, 40);

figure(4);
omega2 = 2.9;
secondOrderSolverPlot(m(2), gamma(2), k(2), F0(2), omega2, 0, 0, 40);

figure(5);
omega3 = 0;
secondOrderSolverPlot(m(3), gamma(3), k(3), F0(3), omega3, 0, 0, 40);
