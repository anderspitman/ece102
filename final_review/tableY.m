function plotY()
    
    step = 0.1;
    x = 0.0;
    index = 1;
    
    fprintf('   x          y1           y2\n');
    fprintf('------------------------------\n');
    
    while x <= 10
        y1Vals(index) = 3*x + 12;
        y2Vals(index) = x^3 - 6;
        xVals(index) = x;
        fprintf('%6.2f      %6.2f      %6.2f\n',...
                xVals(index), y1Vals(index), y2Vals(index));
                
        index = index + 1;
        x = x + step;
    end

end