function myColorRobot(address)
    TOUCH_PORT = lego.NXT.IN_1;
    COLOR_PORT = lego.NXT.IN_2;
    
    COLOR_BLUE = 2;
    COLOR_GREEN = 3;
    COLOR_YELLOW = 4;
    COLOR_RED = 5;

    brick = lego.NXT(address);
    brick.setSensorTouch(TOUCH_PORT);
    brick.setSensorColorFull(COLOR_PORT);
        
    touch = brick.sensorValue(TOUCH_PORT);
    
    while touch == 0
        color = brick.sensorValue(COLOR_PORT);
        fprintf('color: %f\n', color);
        
        if color == COLOR_RED
            stop(brick);
        elseif color == COLOR_GREEN
            straightForward(brick, 40);
        elseif color == COLOR_BLUE || color == COLOR_YELLOW
            stop(brick);
            
            if color == COLOR_BLUE
                turnLeft(brick);
            elseif color == COLOR_YELLOW
                turnRight(brick);
            end
            
            straightForward(brick, 40);
            
        end
        
        touch = brick.sensorValue(TOUCH_PORT);
    end
    
    stop(brick);
    brick.close();
end

function straightForward(brick, powerPercent)
    brick.motorForward(lego.NXT.OUT_AC,...
                       powerPercent);
end

function stop(brick)
    brick.motorBrake(lego.NXT.OUT_AC);
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