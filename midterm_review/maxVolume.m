function [ volume ] = maxVolume( area, x )

y = x + 3;
z = (-2*(x^2) + 6*x + area) / (4*x + 6);

volume = x * y * z;

end

