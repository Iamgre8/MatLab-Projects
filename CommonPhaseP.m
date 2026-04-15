x0 = [-1:0.1:1, -1:0.1:1, -1*ones(1,21), 1*ones(1,21)];
y0 = [-1*ones(1,21), 1*ones(1,21), -1:0.1:1, -1:0.1:1];

% Plot 1
f1 = @(x,y) 3*x - y;
g1 = @(x,y) -4*x + 3*y; 
tmin1 = 0
tmax1 = 0.3

figure();
phasePortrait244(f1, g1, -2, 2, -2, 2, tmin1, tmax1, x0, y0)

% Plot 2
f2 = @(x,y) 2*x - 3*y;
g2 = @(x,y) -4*y;
tmin2 = 0
tmax2 = 0.3

figure();
phasePortrait244(f2, g2, -2, 2, -2, 2, tmin2, tmax2, x0, y0)

% Plot 3
f3 = @(x,y) 3*x + 5*y;
g3 = @(x,y) -x + y;
tmin3 = 0
tmax3 = 0.3

figure();
phasePortrait244(f3, g3, -2, 2, -2, 2, tmin3, tmax3, x0, y0)

% Plot 4
f4 = @(x,y) 7*x + 3*y;
g4 = @(x,y) -3*x + y; 
tmin4 = 0
tmax4 = 0.3

figure();
phasePortrait244(f4, g4, -2, 2, -2, 2, tmin4, tmax4, x0, y0)
