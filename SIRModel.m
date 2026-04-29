Tf = 800;
[S,I,R] = SIRModel_244(0.1, 0.01, [0.99;0.01;0], Tf);
fO = figure(1);
hold on;
plot(0:Tf, S, 'b-');
plot(0:Tf, I, 'r-');
plot(0:Tf, R, 'k-');
legend('S', 'I', 'R')
hold off;

[S2, I2, R2] = SIRModel_244(0.1, 0.2, [0.9;0.1;0], Tf);

fT = figure(2);
hold on;

plot(0:Tf, S2, 'b-');
plot(0:Tf, I2, 'r-');
plot(0:Tf, R2, 'k-');
legend('S', 'I', 'R')

hold off;

% Get the data for the third set of parameters
[S3, I3, R3] = SIRModel_244(0.05, 0.01, [0.9999;0.0001;0], Tf);

fH = figure(3);
hold on;
% Plot the solution for the third set of parameters

plot(0:Tf, S3, 'b-');
plot(0:Tf, I3, 'r-');
plot(0:Tf, R3, 'k-');
legend('S', 'I', 'R')

hold off;

diffBehav = 1;
bestResult = 2;

linesTestOne = findobj('Parent',get(fO, 'CurrentAxes'),'Type','Line');
linesTestTwo = findobj('Parent',get(fT, 'CurrentAxes'),'Type','Line');
linesTestThree = findobj('Parent',get(fH, 'CurrentAxes'),'Type','Line');
for ind = 1:length(linesTestOne)
   if get(linesTestOne(ind), 'Color') == [0,0,1]
       SLineOne = get(linesTestOne(ind), {'Color', 'XData', 'YData'});
   end
   if get(linesTestTwo(ind), 'Color') == [0,0,1]
       SLineTwo = get(linesTestTwo(ind), {'Color', 'XData', 'YData'});
   end
   if get(linesTestThree(ind), 'Color') == [0,0,1]
       SLineThree = get(linesTestThree(ind), {'Color', 'XData', 'YData'});
   end
end
