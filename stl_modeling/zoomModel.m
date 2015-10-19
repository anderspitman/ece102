function zoomModel(filename, startAperture)

    renderImage(filename);
    
    aperture = startAperture;
    
    while aperture > 0
        setAperture(aperture);
        pause(0.01);
        aperture = aperture - APERTURE_STEP();
    end

end

function [step] = APERTURE_STEP()
    step = 1;
end
