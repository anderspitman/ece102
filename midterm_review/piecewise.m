function y = piecewise(x)

if x < 10
    y = -x - 9;
elseif 10 <= x && x < 15
    y = x^2;
elseif 15 <= x <= 20
    y = 3*x^2 - 27;
elseif x > 20
    y = 4*x;
else
    error('Invalid X');
end

end