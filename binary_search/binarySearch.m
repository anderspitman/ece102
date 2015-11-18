function [solution] = binarySearch(startLowerBound, startUpperBound, error,...
                                   number, flag)
    lowerBound = startLowerBound;
    upperBound = startUpperBound;
                               
    index = 1;
    delta = upperBound - lowerBound;
    xVals(index) = index;
    yVals(index) = delta;
    
    while delta > error
        midpoint = (delta / 2) + lowerBound;
        
        if number >= midpoint
            lowerBound = midpoint;
        else
            upperBound = midpoint;
        end
        
        index = index + 1;
        delta = upperBound - lowerBound;
        
        xVals(index) = index;
        yVals(index) = delta;
    end
    
    plot(xVals, yVals);
    theTitle = sprintf('Range: %d-%d, Error: %4.2f, Number: %d',...
                       startLowerBound, startUpperBound, error, number);
    title(theTitle);
    xlabel('Iteration');
    ylabel('Delta');

end

