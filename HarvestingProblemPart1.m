f = @(a,y) y.*(100-y) - a;


alpha = 0;
figure()
phaseLine(@(y) f(alpha, y), -10, 130)
figure()
samplePlots244(@(t,y) f(alpha, y), 0, 0.2, -10, 130, 0, [0:5:130], 'r')

AS1 = 100;
SS1 = [];
US1 = 0;


alpha = 2400;
figure()
phaseLine(@(y) f(alpha, y), -10, 130)
figure()
samplePlots244(@(t,y) f(alpha, y), 0, 0.2, -10, 130, 0, [0:5:130], 'r')

AS2 = 60;
SS2 = [];
US2 = 40;
