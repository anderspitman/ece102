function [costTotal, cylinderLength] = computeTankCost(...
    volume, radius, materialsCost, weldingCost)
%COMPUTETANKCOST Summary of this function goes here
%   Detailed explanation goes here

    cylinderLength = (volume / (pi * (radius^2))) - ((4*radius) / 3);
    
    cylinderMaterialsCost = 2 * pi * radius * cylinderLength * materialsCost;
    sphereMaterialsCost = 4 * pi * (radius^2) * materialsCost;
    
    cylinderWeldingCost = cylinderLength * weldingCost;
    sphereWeldingCost = 4 * pi * radius * weldingCost;
    
    costTotal = cylinderMaterialsCost + sphereMaterialsCost +...
        cylinderWeldingCost + sphereWeldingCost;
end

