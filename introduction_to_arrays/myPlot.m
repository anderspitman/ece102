function myPlot(expression, xStart, xStop, xIncrement)

    x = xStart;
    index = 1;
    while x <= xStop
        y = eval(expression);
        
        xArray(index) = x;
        yArray(index) = y;
        
        x = x + xIncrement;
        index = index + 1;
    end
    
    plot(xArray, yArray);

end