function playSong(brick)
    playTone(brick, 783.99, 0.20);
    playTone(brick, 880, 0.25);
    playTone(brick, 698.46, 0.25);
    playTone(brick, 349.23, 0.30);
    playTone(brick, 523.25, 0.60);
end

function playTone(brick, frequency, durationSeconds)
    durationMilliseconds = durationSeconds*1000;
    brick.playTone(frequency, durationMilliseconds);
    pause(durationSeconds);
end
