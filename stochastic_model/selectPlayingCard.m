function selectPlayingCard()

    suite = chooseSuite();
    card = chooseCard();
    
    fprintf('You got the %s of %s\n', card, suite);
end

function suite = chooseSuite()
    probability = rand;
    
    if probability <= .25
        suite = 'Hearts';
    elseif probability <= .5
        suite = 'Spades';
    elseif probability <= .75
        suite = 'Clubs';
    elseif probability <= 1
        suite = 'Diamonds';
    else
        error('Invalid probability');
    end
end

function card = chooseCard()
    probability = rand;
    NUM_CARD_TYPES = 12;
    if probability <= 1/NUM_CARD_TYPES
        card = '2';
    elseif probability <= 2/NUM_CARD_TYPES
        card = '3';
    elseif probability <= 3/NUM_CARD_TYPES
        card = '4';
    elseif probability <= 4/NUM_CARD_TYPES
        card = '5';
    elseif probability <= 5/NUM_CARD_TYPES
        card = '6';
    elseif probability <= 6/NUM_CARD_TYPES
        card = '7';
    elseif probability <= 7/NUM_CARD_TYPES
        card = '8';
    elseif probability <= 8/NUM_CARD_TYPES
        card = '9';
    elseif probability <= 9/NUM_CARD_TYPES
        card = 'Jack';
    elseif probability <= 10/NUM_CARD_TYPES
        card = 'Queen';
    elseif probability <= 11/NUM_CARD_TYPES
        card = 'King';
    elseif probability <= 12/NUM_CARD_TYPES
        card = 'Ace';
    else
        error('Invalid probability');
    end
end

