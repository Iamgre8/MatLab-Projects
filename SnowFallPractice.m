% SnowFall Array Practice using Statistical Methods

snowFall = [237 201 239 0 0 0 0 0 0 0 0 196];

N = length(snowFall);
snowMean = mean(snowFall);
snowMedian = median(snowFall);

snowSTD = std(snowFall);

snowMin = min(snowFall);
snowMax = max(snowFall);

MinIndex = 0;
MaxIndex = 0;

for index = 1:N
    if (snowFall(index) == snowMin && MinIndex == 0)
        MinIndex = index;
    end
    
    if (snowFall(index) == snowMax && MaxIndex == 0)
        MaxIndex = index;
    end
end


snowMinMonth = MinIndex;
snowMaxMonth = MaxIndex;
