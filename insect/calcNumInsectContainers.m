
function numInsectContainers = calcNumInsectContainers(...
    containerLength, containerWidth, containerHeight, cylinderRadius)
CYLINDER_VOLUME = 1000;
boxSideLength = 2 * cylinderRadius;
boxHeight = CYLINDER_VOLUME / (pi * (cylinderRadius^2));

numBoxesAlongLength = floor(containerLength / boxSideLength);
numBoxesAlongWidth = floor(containerWidth / boxSideLength);
numBoxesStacked = floor(containerHeight / boxHeight);

numInsectContainers = numBoxesAlongLength*numBoxesAlongWidth*numBoxesStacked;

end
