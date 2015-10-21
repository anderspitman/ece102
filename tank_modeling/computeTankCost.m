function [costTotal, cylinderLength] = computeTankCost(...
    volume, radius, materialsCost, weldingCost)
    % Name of Function - computeTankCost
    % Inputs - volume, radius, materialsCost, weldingCost
    % Outputs - costTotal, cylinderLength
    % Implementation - Calculate cost of each part and weld then sum

    cylinderLength = (volume / (pi * (radius^2))) - ((4*radius) / 3);
    
    cylinderMaterialsCost = 2 * pi * radius * cylinderLength * materialsCost;
    sphereMaterialsCost = 4 * pi * (radius^2) * materialsCost;
    
    cylinderWeldingCost = cylinderLength * weldingCost;
    sphereWeldingCost = 4 * pi * radius * weldingCost;
    
    costTotal = cylinderMaterialsCost + sphereMaterialsCost +...
        cylinderWeldingCost + sphereWeldingCost;
end

