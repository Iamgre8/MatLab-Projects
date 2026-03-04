fO = figure(1);

secondOrderSolverPlot(1, 1, 10, 5, 6, 1, -2, 20);

GL = 4;
RL = 2;
PR1 = 'N';


fT = figure(2);

secondOrderSolverPlot(1, 1, 20, 5, 3, 0, -5, 20);
PR2 = 'Y';

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
