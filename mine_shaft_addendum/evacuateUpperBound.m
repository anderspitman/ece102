function [ freshAirVolumeTotal ] = evacuateUpperBound(...
    mineVolume, freshAirVolumeStep, outputTypeFlag)

    methaneVolume = mineVolume;
    methaneConcentration = 1;
    freshAirVolumeTotal = 0;
    iterationCount = 0;
    index = 1;
    
    if outputTypeFlag == 1
        fprintf('  Fresh Air      Methane    Concentration\n');        
        fprintf('-------------------------------------------\n');
        fprintf('%10.2f   %10.2f   %10.4f\n', freshAirVolumeTotal,...
                methaneVolume, methaneConcentration);
    end

    while methaneConcentration >= 0.01

        freshAirVolumeTotal = freshAirVolumeTotal + freshAirVolumeStep;
        methaneConcentration = ...
            methaneVolume / (mineVolume + freshAirVolumeStep);
        methaneVolumeChange = (methaneConcentration * freshAirVolumeStep);
        methaneVolume = methaneVolume - methaneVolumeChange;

        if outputTypeFlag == 1
            fprintf('%10.2f   %10.2f   %10.4f\n', freshAirVolumeTotal,...
                    methaneVolume, methaneConcentration);
        end

        methaneVolumeValues(index) = methaneVolume;
        freshAirVolumeValues(index) = freshAirVolumeTotal;

        index = index + 1;
        iterationCount = iterationCount + 1;
    end

    if outputTypeFlag == 1
        fprintf('-------------------------------------------\n');
    end
    
    fprintf('Final methane concentration: %f\n', methaneConcentration);
    fprintf('Number of iterations: %f\n', iterationCount);

    if outputTypeFlag == 2
        plot(methaneVolumeValues, freshAirVolumeValues, 'r');
    end
end
