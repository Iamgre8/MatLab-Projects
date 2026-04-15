f = @(x,y) y;
g = @(x,y) -0.5*y - sin(2*x);

F = @(t, x) [f(x(1), x(2)); g(x(1), x(2))];

% Plot solution with (1,3) initial condition.

[t,x] = ode45(F, [0, 12], [0;3]);

twoPlots(t,x);

sol1LT = [pi, 0];

% Change condition to (0,-1)

[t,x] = ode45(F, [0, 12], [0;-1]);

twoPlots(t,x);

sol2LT = [0, 0];

% Change condition to (-3,3)

[t,x] = ode45(F, [0, 12], [-3;3]);

twoPlots(t,x);

sol3LT = [0, 0];

% Change condition to (-3,-1)

[t,x] = ode45(F, [0, 12], [-3;-1]);

twoPlots(t,x);

sol4LT = [-pi, 0];


function twoPlots(t, x)
xSol1 = x(:, 1);
ySol1 = x(:, 2);

figure();
subplot(2,1,1)
plot(t, xSol1);
axis([0, 12, -5, 5]);
xlabel('t');
ylabel('x(t)');
yticks(-5:1:5);

subplot(2, 1, 2)
plot(t, ySol1);
axis([0, 12, -5, 5]);
xlabel('t');
ylabel('y(t)');
yticks(-5:1:5);
end
