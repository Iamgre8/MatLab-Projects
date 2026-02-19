f1 = @(y) y.^2.*(y+2).*(y-1);
phaseLine(f1, -5, 5);

AS1 = [-2];
US1 = [1];
SS1 = [0];

figure();
phaseLine(@(y) fHidden(y), -7, 7);

AS2 = [-5 4];
US2 = [-2];
SS2 = [1];
