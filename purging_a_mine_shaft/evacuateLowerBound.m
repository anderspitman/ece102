function [ freshAirVolumeTotal ] = evacuateLowerBound(...
    mineVolume, freshAirVolumeStep)

    methaneVolume = mineVolume;
    methaneConcentration = 1;
    freshAirVolumeTotal = 0;
    iterationCount = 0;
    
    while methaneConcentration > 0.01
        freshAirVolumeTotal = freshAirVolumeTotal + freshAirVolumeStep;
        methaneVolumeChange = (methaneConcentration * freshAirVolumeStep);
        methaneVolume = methaneVolume - methaneVolumeChange;
        methaneConcentration = (methaneVolume / mineVolume);
        iterationCount = iterationCount + 1;
    end
    
    fprintf('Final methane concentration: %f\n', methaneConcentration);
    fprintf('Number of iterations: %f\n', iterationCount);

end

