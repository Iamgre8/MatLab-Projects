% Consider the initial value problem dy / dt = e^t - t, y(0) = 1 which has solution y(t) = e^t - t^2 / 2.The main built-in solver in MATLAB is ode45. 
% - eulerMethod with delta t = 0.1 with red diamonds
% - rungeKuttaMethod with delta t = 0.1 with green asterisks
% - The actual solution with a blue line 


f = @(t,y) exp(t) - t;
fSol = @(t) exp(t) - t.^2/2;


dt = 0.1;
Tf = 2;
t0 = 0;
y0 = 1;

figH = figure(1);


[t45, y45] = ode45(f, [0 Tf], y0);
[tEM, yEM] = eulerMethod(f, dt, Tf, t0, y0);
[tRK, yRK] = rungeKuttaMethod(f, dt, Tf, t0, y0);

hold on;

plot(t45, y45, 'ko');
plot(tEM, yEM, 'rd');
plot(tRK, yRK, 'g*');

tVals = linspace(0, 2, 100);

plot(tVals, fSol(tVals), 'b-');
hold off;

lines = findobj('Parent',get(figH, 'CurrentAxes'),'Type','Line');
lineOneInfo = get(lines(1),{'Color','Marker','XData','YData'});
lineTwoInfo = get(lines(2),{'Color','Marker','XData','YData'});
lineThreeInfo = get(lines(3),{'Color','Marker','XData','YData'});
lineFourInfo = get(lines(4),{'Color','Marker','XData','YData'});
ode45Line = cell(1,4);
EMLine = cell(1,4);
RKLine = cell(1,4);
fnLine = cell(1,4);
switch binDec(lineOneInfo{1})
    case 0
        ode45Line = lineOneInfo;
    case 1
        fnLine = lineOneInfo;
    case 2
        RKLine = lineOneInfo;
    case 4
        EMLine = lineOneInfo;
end
switch binDec(lineTwoInfo{1})
    case 0
        ode45Line = lineTwoInfo;
    case 1
        fnLine = lineTwoInfo;
    case 2
        RKLine = lineTwoInfo;
    case 4
        EMLine = lineTwoInfo;
end
switch binDec(lineThreeInfo{1})
    case 0
        ode45Line = lineThreeInfo;
    case 1
        fnLine = lineThreeInfo;
    case 2
        RKLine = lineThreeInfo;
    case 4
        EMLine = lineThreeInfo;
end
switch binDec(lineFourInfo{1})
    case 0
        ode45Line = lineFourInfo;
    case 1
        fnLine = lineFourInfo;
    case 2
        RKLine = lineFourInfo;
    case 4
        EMLine = lineFourInfo;
end

function x = binDec(v)
    x=0;
    for ind = 1:length(v)
        x = x + 2^(length(v)-ind)*v(ind);
    end
end
