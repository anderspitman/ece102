function [containerMax, radiusMax, heightMax] = bestDesign...
    (length, width, height, start, stop)

radius = start;
containerMax = 0;
STEP = 0.0001;

while radius <= stop
    numInsectContainers = calcNumInsectContainers(length, width, height,...
                                                  radius);
    if numInsectContainers > containerMax
       containerMax = numInsectContainers;
       radiusMax = radius;
    end
    
    radius = radius + STEP;
end

heightMax = 1000/(pi*radiusMax^2);

end

