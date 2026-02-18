% Harvesting Problem Part 2

f = @(a,y) y.*(100-y) - a;

Alpha80 = 1600;
figure()
phaseLine(@(y) f(Alpha80, y), -10, 130)
figure()
samplePlots244(@(t,y) f(Alpha80, y), 0, 0.2, -10, 130, 0, [0:5:130], 'r')
