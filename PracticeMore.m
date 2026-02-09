a = 5;
a1 = 12.6700;
array1 = [2,6,7,8];
array2 = [1;6;7;9];
char1 = 'C';
char2 = 'helloworld';
off = false;
on = true;

x = mod(12,2);

fx = @(x,y) x.^2 + 4.*x.*y + y.^2;
xVals = [1,2,3,4];
yVals = [4,3,2,1];
hold on;
plot(xVals, fx(xVals, yVals));

hold off;
plot(yVals, fx(xVals, yVals));


%%%%

v = [1,2,3,4];

for counter = 1:1:size(v)
    x = v(counter)^2
end

plot(xPts, gx(xPts));
hold off;

xPts = linspace(1,5,100);
fx = @(x) x.^2 + 2;
gx = @(x) x.^2 - 3*x + 7;
figure(1);
hold on;
plot(xPts, fx(xPts));
plot(xPts, gx(xPts));
hold off;

y = 3;
x = y * 5;
z = y.* 5;


%%%%%

[X, Y] = meshgrid(-2:0.2:2, -2:0.2:2);
Z = X .* exp(-X.^2 - Y.^2); % Calculate Z values

% Create surface plot
figure;
surf(X, Y, Z);
colorbar; % Add color scale
shading interp; % Smooth colors
title('3D Surface Plot');
xlabel('X-axis'); ylabel('Y-axis'); zlabel('Z-axis');

%% 

x = [4,6,7,8,4];

length = length(x);
pl = sum(x);


max = max(x);
min = min(x);
range = max - min;


for index = 1:5:length
    total += index;
end

ME = pl / length;

data = [12,15,14,20,18,17,13];

%%

function outputValue1 = avg(inputValue1, inputValue2);
    outputValue1 = (inputValue1 + inputValue2) / 2;
end

