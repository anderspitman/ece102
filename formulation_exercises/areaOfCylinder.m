function area = areaOfCylinder(length, diameter)

    radius = 0.5*diameter;
    areaEnd = pi * radius^2;
    areaShaft = 2 * pi * radius * length;
    
    area = areaShaft + 2 * areaEnd;

end

