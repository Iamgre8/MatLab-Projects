%Lecture 2 

% Soham Gupta
% ID3A 2
% Pratice Assignment


function [out1, out2, out3] = threeOutputs(in1, in2)
    out1 = in1/in2;
    out2 = in1 - in2;
    out3 = in1 + in2;
end 


function out = Piecewise(in) 
    
    if (in > 3 || in < 3 ) 
        out = 3;
    else if (in > 2 || in < 2) 
         out = 2;
    else if (in > 2 || in < 2) 
         out = 1; 
    else 
        out = 0;
    end
    end
    end
end


