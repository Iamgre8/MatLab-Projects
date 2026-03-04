fO = figure(1);

secondOrderSolverPlot(1, 0, (880*pi)^2, 4, 2*pi*659, 0, 0, 3);

fT = figure(2);

secondOrderSolverPlot(1, 0, (880*pi)^2, 4, 2*pi*523, 0, 0, 3);

fH = figure(3);

secondOrderSolverPlot(1, 0, (880*pi)^2, 4, 2*pi*445, 0, 0, 3);

fF = figure(4);

secondOrderSolverPlot(1, 0, (880*pi)^2, 4, 2*pi*441, 0, 0, 3);

Phen1 =4;
Phen2 =4;
Phen3 =2;
Phen4 =2;

linesTestOne = findobj('Parent',get(fO, 'CurrentAxes'),'Type','Line');
for ind = 1:max(size(linesTestOne))
    if get(linesTestOne(ind), 'Color') == [0, 0, 1]
        linePropOne = get(linesTestOne(ind), {'XData', 'YData'});
    end
end

linesTestTwo = findobj('Parent',get(fT, 'CurrentAxes'),'Type','Line');
for ind = 1:max(size(linesTestTwo))
    if get(linesTestTwo(ind), 'Color') == [0, 0, 1]
        linePropTwo = get(linesTestTwo(ind), {'XData', 'YData'});
    end
end

linesTestThree = findobj('Parent',get(fH, 'CurrentAxes'),'Type','Line');
for ind = 1:max(size(linesTestThree))
    if get(linesTestThree(ind), 'Color') == [0, 0, 1]
        linePropThree = get(linesTestThree(ind), {'XData', 'YData'});
    end
end

linesTestFour = findobj('Parent',get(fF, 'CurrentAxes'),'Type','Line');
for ind = 1:max(size(linesTestFour))
    if get(linesTestFour(ind), 'Color') == [0, 0, 1]
        linePropFour = get(linesTestFour(ind), {'XData', 'YData'});
    end
end

