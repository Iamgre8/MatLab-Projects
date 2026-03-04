fO = figure(1);
secondOrderSolverPlot(1, 4, 13, 5, 2, 1, 0, 30);

fT = figure(2);
secondOrderSolverPlot(1, 4, 13, 5, 2, -1, 3, 30);

fH = figure(3);
secondOrderSolverPlot(1, 4, 13, 5, 7, 1, 0, 30);



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

