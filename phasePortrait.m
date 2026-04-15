f = @(x,y) y;
g = @(x,y) -0.5*y - sin(2*x);

xmin1 = -5;
xmax1 = 5;
ymin1 = -3;
ymax1 = 3;
tmin1 = 0;
tmax1 = 15;

x01 = [0 0 -3 -3];
y01 = [3 -1 3 -1];

figure()
phasePortrait244(f, g, xmin1, xmax1, ymin1, ymax1, tmin1, tmax1, x01, y01)

xmin2 = -5;
xmax2 = 5;
ymin2 = -3;
ymax2 = 3;
tmin2 = 0;
tmax2 = 15;

x02 = [-5:0.2:5, -5:0.2:5, -5*ones(1,31), 5*ones(1,31)];
y02 = [3*ones(1,51), -3*ones(1,51), -3:0.2:3, -3:0.2:3];

figure()
phasePortrait244(f, g, xmin2, xmax2, ymin2, ymax2, tmin2, tmax2, x02, y02)

plot1vars = [xmin1, xmax1, ymin1, ymax1, tmin1, tmax1];
plot1ICs = [x01;y01];

plot2vars = [xmin2, xmax2, ymin2, ymax2, tmin2, tmax2];
plot2ICs = [x02;y02];
