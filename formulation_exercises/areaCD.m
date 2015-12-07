function area = areaCD(outerDiameterInches, innerDiameterInches)

    outerArea = areaSquaredCentimeters(outerDiameterInches);
    innerArea = areaSquaredCentimeters(innerDiameterInches);
    
    area = outerArea - innerArea;

end

function area = areaSquaredCentimeters(diameterInches)
    radiusInches = diameterInches / 2;
    radiusCentimeters = 2.54 * radiusInches;
    area = pi * radiusCentimeters^2;
end

