function area = computeScreenArea(diagonal, aspectRatio)

    [width, height] = computeScreenDimensions(diagonal, aspectRatio);
    
    area = width * height;

end

