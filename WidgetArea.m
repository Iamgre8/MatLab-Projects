% Soham Gupta
%2/10/26
% Piecewise scheme for the size of a widget is acceptable
% Practice 



thickness = 50; % Initial Value of Thickness
area = 0.1; % Inital value of area

thicknessBlackTop = (sqrt(2 * area)) / 100; % Upper bound of black area
thicknessBlackBottom = (sqrt(0.5 * area)) / 100; % Bottom bound of black area

thicknessGrayTop = (sqrt(5 * area)) / 100; % Upper bound of gray area
thicknessGrayBottom = (sqrt(0.2 * area)) / 100; % Bottom bound of gray area

if (thickness <= thicknessBlackTop) && (thickness >= thicknessBlackBottom) % Checks if thickness is between upper & bottom bound of black area
    disp('Widget is acceptable with black thickness.'); % Display result
elseif (thickness <= thicknessGrayTop) && (thickness >= thicknessGrayBottom) % Checks if thickness is between upper & bottom bound of gray area
    disp('Widget thickness can be reprocessed.'); % Display result
else
    disp('Widget thickness is unacceptable.'); % Thickness was in the white area
end



