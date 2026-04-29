IC = [0.9999;0.0001;0;0;0];
Tf = 400;

[S,I,Q,R,D] = SIRQModel_244(0.2, 0.005, 0.01, 0.03, 0.01, 0.03, IC, Tf);

figure();
axO1 = subplot(2,1,1);
hold on;
plot(0:Tf, S, 'b-')
plot(0:Tf, I, 'r-')
plot(0:Tf, Q, 'k-')
hold off;
legend('S', 'I', 'Q');
title('Set 1')

axO2 = subplot(2, 1, 2);
hold on;
plot(0:Tf, D, 'r-')
plot(0:Tf, R, 'g-')
hold off;
legend('D', 'R');

[S,I,Q,R,D] = SIRQModel_244(0.3, 0.1, 0.03, 0.07, 0.05, 0.05, IC, Tf);

figure();
axT1 = subplot(2,1,1);
hold on;
plot(0:Tf, S, 'b-')
plot(0:Tf, I, 'r-')
plot(0:Tf, Q, 'k-')
hold off;
legend('S', 'I', 'Q');
title('Set 2')

axT2 = subplot(2, 1, 2);
hold on;
plot(0:Tf, D, 'r-')
plot(0:Tf, R, 'g-')
hold off;
legend('D', 'R');

[S,I,Q,R,D] = SIRQModel_244(0.2, 0.01, 0.02, 0.04, 0.04, 0.02, IC, Tf);

figure();
axH1 = subplot(2,1,1);
hold on;
plot(0:Tf, S, 'b-')
plot(0:Tf, I, 'r-')
plot(0:Tf, Q, 'k-')
hold off;
legend('S', 'I', 'Q');
title('Set 3')

axH2 = subplot(2, 1, 2);
hold on;
plot(0:Tf, D, 'r-')
plot(0:Tf, R, 'g-')
hold off;
legend('D', 'R');

bestResult = 2;

linesTestOne = findobj('Parent',axO1,'Type','Line');
linesTestTwo = findobj('Parent',axT1,'Type','Line');
linesTestThree = findobj('Parent',axH1,'Type','Line');
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

linesTestOne = findobj('Parent',axO2,'Type','Line');
linesTestTwo = findobj('Parent',axT2,'Type','Line');
linesTestThree = findobj('Parent',axH2,'Type','Line');
for ind = 1:length(linesTestOne)
   if get(linesTestOne(ind), 'Color') == [1,0,0]
       DLineOne = get(linesTestOne(ind), {'Color', 'XData', 'YData'});
   end
   if get(linesTestTwo(ind), 'Color') == [1,0,0]
       DLineTwo = get(linesTestTwo(ind), {'Color', 'XData', 'YData'});
   end
   if get(linesTestThree(ind), 'Color') == [1,0,0]
       DLineThree = get(linesTestThree(ind), {'Color', 'XData', 'YData'});
   end
end
