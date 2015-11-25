function coinSide = flipCoin()

    probability = rand;
    
    if probability < 0.5
        coinSide = 'Heads'
    else
        coinSide = 'Tails'
    end

end

