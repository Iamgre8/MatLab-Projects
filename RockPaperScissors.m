function result = rockPaperScissors(players)

    p1 = players(1);
    p2 = players(2);


    if ~ismember(p1, [1 2 3]) || ~ismember(p2, [1 2 3])
        result = -1;
        return
    end


    if p1 == p2
        result = 0;
        return
    end


    if (p1 == 1 && p2 == 3) || (p1 == 2 && p2 == 1) || (p1 == 3 && p2 == 2)        
        result = 1;  
    else
        result = 2;  
    end

    
end


