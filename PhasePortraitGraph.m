f = @(x,y) y;
g = @(x,y) -0.5*y - sin(2*x);
F = @(t, x) [f(x(1), x(2)); g(x(1), x(2))];

[t,x] = ode45(F, [0, 12], [0;3]);
xSol1 = x(:, 1);
ySol1 = x(:, 2);

[t,x] = ode45(F, [0, 12], [0;-1]);
xSol2 = x(:, 1);
ySol2 = x(:, 2);

[t,x] = ode45(F, [0, 12], [-3;3]);
xSol3 = x(:, 1);
ySol3 = x(:, 2);

[t,x] = ode45(F, [0, 12], [-3;-1]);
xSol4 = x(:, 1);
ySol4 = x(:, 2);

figH = figure();
hold on;

plot(xSol1, ySol1, 'b');
plot(xSol2, ySol2, 'g');
plot(xSol3, ySol3, 'r');
plot(xSol4, ySol4, 'k');

axis([-4, 5, -1, 3])
hold off;

lines = findobj('Parent',get(figH, 'CurrentAxes'),'Type','Line');
lineOneInfo = get(lines(1),{'Color','XData','YData'});
lineTwoInfo = get(lines(2),{'Color','XData','YData'});
lineThreeInfo = get(lines(3),{'Color','XData','YData'});
lineFourInfo = get(lines(4),{'Color','XData','YData'});
line4Data = cell(1,3);
line1Data = cell(1,3);
line2Data = cell(1,3);
line3Data = cell(1,3);
switch binDec(lineOneInfo{1})
    case 0
        line4Data = lineOneInfo;
    case 1
        line1Data = lineOneInfo;
    case 2
        line2Data = lineOneInfo;
    case 4
        line3Data = lineOneInfo;
end
switch binDec(lineTwoInfo{1})
    case 0
        line4Data = lineTwoInfo;
    case 1
        line1Data = lineTwoInfo;
    case 2
        line2Data = lineTwoInfo;
    case 4
        line3Data = lineTwoInfo;
end
switch binDec(lineThreeInfo{1})
    case 0
        line4Data = lineThreeInfo;
    case 1
        line1Data = lineThreeInfo;
    case 2
        line2Data = lineThreeInfo;
    case 4
        line3Data = lineThreeInfo;
end
switch binDec(lineFourInfo{1})
    case 0
        line4Data = lineFourInfo;
    case 1
        line1Data = lineFourInfo;
    case 2
        line2Data = lineFourInfo;
    case 4
        line3Data = lineFourInfo;
end

function x = binDec(v)
    x=0;
    for ind = 1:length(v)
        x = x + 2^(length(v)-ind)*v(ind);
    end
end
