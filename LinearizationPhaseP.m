f = @(x,y) y;
g = @(x,y) -0.5*y - sin(2*x);

x0 = [-5:0.1:5];
y0 = zeros(1,101);

figure()
phasePortrait244(f, g, -5, 5, -3, 3, -15, 5, x0, y0);
title('Full Phase Portrait');

x0 = [-0.5:0.02:0.5];
y0 = zeros(1,51);
figure()
phasePortrait244(f, g, -0.5, 0.5, -0.5, 0.5, -15, 5, x0, y0);
title('Zoomed in around (0,0)')

cp1 = 'spiral sink';

x0 = [pi/2-0.5:0.02:pi/2+0.5, pi/2-0.5:0.02:pi/2+0.5, pi/2-0.5:0.02:pi/2+0.5];
y0 = [zeros(1,51), 0.25*ones(1,51), -0.25*ones(1,51)];
figure()
phasePortrait244(f, g, pi/2-0.5, pi/2+0.5, -0.5, 0.5, -15, 5, x0, y0);
title('Zoomed in around (\pi/2, 0)')

cp2 = 'saddle';

fl1 = @(x,y) y;
gl1 = @(x,y) -2*x - 0.5*y;

x0 = [-0.5:0.02:0.5];
y0 = zeros(1,51);
figure()
phasePortrait244(fl1, gl1, -0.5, 0.5, -0.5, 0.5, -15, 5, x0, y0);
title('Linearized Portrait around (0,0)')

cpl1 = 'spiral sink';

fl2 = @(x,y) y;
gl2 = @(x,y) 2*x - 0.5*y;
x0 = [-0.5:0.02:0.5, -0.5:0.02:0.5, -0.5:0.02:0.5];
y0 = [zeros(1,51), 0.25*ones(1,51), -0.25*ones(1,51)];
figure()
phasePortrait244(fl2, gl2, -0.5, 0.5, -0.5, 0.5, -15, 5, x0, y0);
title('Linearized Portrait around (\pi/2, 0)')

cpl2 = 'saddle';
