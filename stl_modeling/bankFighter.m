function bankFighter()

    renderImage('STL Models/f15.stl');
    
    azimuth = -90;
    elevation = 0;
    
    setView(azimuth, elevation);
    
    aperture = 60;
    
    while aperture > 0
        setAperture(aperture);
        pause(0.1);
        aperture = aperture - 1;
        
        if aperture < BANK_THRESHOLD()
            azimuth = azimuth - 1;
            elevation = elevation - 1;
            setView(azimuth, elevation);
        end
    end

end

function [threshold] = BANK_THRESHOLD()
    threshold = 40;
end

