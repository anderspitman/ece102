function [width, height] = computeScreenDimensions(diagonal, aspectRatio)

    height = sqrt(diagonal^2 / (1 + aspectRatio^2));
    width = height * aspectRatio;

end

