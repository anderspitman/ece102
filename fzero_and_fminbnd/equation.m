function [ y ] = equation( xStart, xStop, xIncrement )

    x = xStart;
    index = 1;
    
    fprintf('    X             Y\n');
    fprintf('----------------------\n');
    
    while x <= xStop
        xValues(index) = x;
        yValues(index) = 5*x^3 - 16*x^2 - 30*x + 10;
        fprintf('%7.2f        %7.2f\n', xValues(index), yValues(index));
        x = x + xIncrement;
        index = index + 1;
    end
    
    plot(xValues, yValues);
    grid on;
    xlabel('X');
    ylabel('Y');
    title('5x^3 - 16x^2 - 30x + 10');

end

