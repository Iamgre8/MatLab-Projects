function fib = fibonacciMatrix(col1, col2, n)
    
    numRows = length(col1);
    
    fib = zeros(numRows, n);
    
    fib(:, 1) = col1;
    fib(:, 2) = col2;
    
    
    for j = 3:n
        for i = 1:numRows
            if mod(i, 2) == 1
                
                fib(i, j) = fib(i, j-1) + fib(i, j-2);
            else
                
                fib(i, j) = fib(i, j-2) - fib(i, j-1);
            end
        end
    end
end
