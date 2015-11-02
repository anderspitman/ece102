function [ freshAirVolumeTotal ] = evacuateUpperBound(...
    mineVolume, freshAirVolumeStep)

    methaneVolume = mineVolume;
    methaneConcentration = 1;
    freshAirVolumeTotal = 0;
    iterationCount = 0;
    
    while methaneConcentration > 0.01
        freshAirVolumeTotal = freshAirVolumeTotal + freshAirVolumeStep;
        methaneConcentration = ...
            methaneVolume / (mineVolume + freshAirVolumeStep);
        methaneVolumeChange = (methaneConcentration * freshAirVolumeStep);
        methaneVolume = methaneVolume - methaneVolumeChange;
        iterationCount = iterationCount + 1;
    end
    
    fprintf('Final methane concentration: %f\n', methaneConcentration);
    fprintf('Number of iterations: %f\n', iterationCount);

end