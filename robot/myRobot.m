function myRobot(address)
    TOUCH_PORT = lego.NXT.IN_1;
    SONIC_PORT = lego.NXT.IN_4;

    brick = lego.NXT(address);
    brick.setSensorTouch(TOUCH_PORT);
    brick.setSensorUltrasonic(SONIC_PORT);
    
    straightForward(brick, 80); 
    
    touch = brick.sensorValue(TOUCH_PORT);
    
    while touch == 0
        sonic = 100;
        while ~seeAnything(sonic) && touch == 0
            sonic = brick.sensorValue(SONIC_PORT);
            touch = brick.sensorValue(TOUCH_PORT);
            fprintf('sonic value: %f\n', sonic);
        end
        
        if touch == 0
            handleObstruction(brick);
            straightForward(brick, 80);
        end
    end
    
    stop(brick);
end

function value = seeAnything(sonic)
    value = sonic <= 20.0 && sonic ~= -1;
end

function straightForward(brick, powerPercent)
    brick.motorForward(lego.NXT.OUT_AC,...
                       powerPercent);
end

function stop(brick)
    brick.motorBrake(lego.NXT.OUT_AC);
end

function handleObstruction(brick)
    stop(brick);
    playSong(brick);
    randomTurn(brick);
end

function randomTurn(brick)
    action = rand();
    NUM_CHOICES = 3;
    
    if action <= 1/NUM_CHOICES
        turnLeft(brick);
    elseif action <= 2/NUM_CHOICES
        turnRight(brick);
    elseif action <= 3/NUM_CHOICES
        turnAround(brick);
    else
        error('Invalid action');
    end
end

function turnRight(brick)
    turn(brick, lego.NXT.OUT_C, lego.NXT.OUT_A);
end

function turnLeft(brick)
    turn(brick, lego.NXT.OUT_A, lego.NXT.OUT_C);
end

function turn(brick, forwardPort, reversePort)
    brick.motorForward(forwardPort, 80);
    brick.motorReverse(reversePort, 80);
    pause(0.8);
    stop(brick);
end

function turnAround(brick)
    brick.motorForward(lego.NXT.OUT_A, 80);
    brick.motorReverse(lego.NXT.OUT_C, 80);
    pause(1.9);
    stop(brick);
end