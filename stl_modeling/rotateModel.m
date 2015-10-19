function rotateModel(filename, startAzimuth, elevation)

    renderImage(filename);
    
    azimuth = startAzimuth;
    
    while azimuth <= 360
        setView(azimuth, elevation);
        pause(PAUSE_TIME());
        azimuth = azimuth + AZIMUTH_STEP();
    end

end

function [step] = AZIMUTH_STEP()
    step = 1;
end

function [time] = PAUSE_TIME()
    time = 0.1;
end
