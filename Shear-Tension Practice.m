function [gradeToUse] = construct(shearLoad, tensileLoad)

    if shearLoad <= 20000 && tensileLoad <= 40000
        gradeToUse = 'Grade 1 Steel';

    elseif shearLoad <= 45000 && tensileLoad <= 60000
        gradeToUse = 'Grade 2 Steel';

    elseif shearLoad <= 65000 && tensileLoad <= 85000
        gradeToUse = 'Grade 3 Steel';

    elseif shearLoad <= 90000 && tensileLoad <= 100000
        gradeToUse = 'Grade 4 Steel';

    elseif shearLoad <= 95000 && tensileLoad <= 130000
        gradeToUse = 'Titanium';

    else
        gradeToUse = 'Invalid design';
    end

end
