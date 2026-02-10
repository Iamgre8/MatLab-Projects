% [t,y] = eulerMethod(f, dt, Tf, tI, yI) that uses Euler's Method to approximate the solution to the differential equation , where f is expressed as an anonymous function, using step size dt. 
% It starts at the initial point and stops at the time value Tf. 
% The outputs from this function are a list of all t values used in the list t and all y-values found in the list y.
% The skeleton of the function is set up below. 
% I Computed the slope of the tangent line at the current point.
% I updated the t value to the appropriate next t value.
% I update the y value to the appropriate next y value.
% ind is the index of the loop. Since the t and y lists will store all of these values, t(ind) will refer to the current t-value (at this step of the iteration) and t(ind+1) would give the next t-value.


function [t,y] = eulerMethod(f, dt, Tf, tI, yI)
    t(1) = tI;
    y(1) = yI;
    numSteps = (Tf - tI)/dt;
    for ind=1:numSteps
    % Fill in the lines below this
        m = f(t(ind), y(ind));
        t(ind+1) = t(ind) + dt;
        y(ind+1) = y(ind) + dt * m; 
    end
end
