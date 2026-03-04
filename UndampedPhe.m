fO = figure(1);
secondOrderSolverPlot(1, 0, 9, 4, 5, 0, 0, 100);
fT = figure(2);
secondOrderSolverPlot(1, 0, 9, 4, 3.25, 0, 0, 100);
fH = figure(3);
secondOrderSolverPlot(1, 0, 9, 4, 3.1, 0, 0, 100);
fF = figure(4);
secondOrderSolverPlot(1, 0, 9, 4, 3, 0, 0, 100);


Phen1 =4;
Phen2 =2;
Phen3 =2;
Phen4 =3;



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
