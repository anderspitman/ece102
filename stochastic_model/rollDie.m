function dieFace = rollDie()

    probability = rand;
        
    if probability < 1/6
        dieFace = 1;
    elseif probability < 2/6
        dieFace = 2;
    elseif probability < 3/6
        dieFace = 3;
    elseif probability < 4/6
        dieFace = 4;
    elseif probability < 5/6
        dieFace = 5;
    elseif probability < 6/6
        dieFace = 6;
    else
        error('Invalid probability');
    end

end

