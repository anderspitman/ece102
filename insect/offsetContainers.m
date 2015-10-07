
function numContainers = offsetContainers(L, W, H, r)
CYLINDER_VOLUME = 1000;

h = cylinderHeight(r, CYLINDER_VOLUME);
stacks = fix(H / h);
rows = fix((W - (2*r - r*sqrt(3))) / (r*sqrt(3)));
numOdd = fix(L / (2*r));

wastedSpace = L - (numOdd * (2*r));

if wastedSpace >= r
    numEven = numOdd;
else
    numEven = numOdd-1;
end

rowsEven = fix(rows/2);
rowsOdd = rows - rowsEven;

numContainers = stacks * (rowsEven * numEven + rowsOdd * numOdd);

end


function [height] = cylinderHeight(radius, volume)

height = volume / (pi * (radius^2));

end
