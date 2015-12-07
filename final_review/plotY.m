function plotY()
    
    step = 0.1;
    x = 0.0;
    index = 1;
    
    while x <= 10
        y1Vals(index) = 3*x + 12;
        y2Vals(index) = x^3 - 6;
        xVals(index) = x;
        index = index + 1;
        x = x + step;
    end
    
    plot(xVals, y1Vals);
    hold on;
    plot(xVals, y2Vals);
    
    grid on;
    xlabel('x');
    ylabel('y');

end