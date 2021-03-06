classdef MinePurifierUpper < MinePurifier
    
    methods
        function [methaneVolume, methaneConcentration] = ...
            purificationAlgorithm(obj, freshAirVolumeTotal,...
                                  freshAirVolumeStep,...
                                  currentMethaneConcentration,...
                                  currentMethaneVolume)

            freshAirVolumeTotal = freshAirVolumeTotal + freshAirVolumeStep;
            methaneConcentration = ...
                currentMethaneVolume / (obj.mineVolume + freshAirVolumeStep);
            methaneVolumeChange = ...
                (currentMethaneConcentration * freshAirVolumeStep);
            methaneVolume = currentMethaneVolume - methaneVolumeChange;
        end
    end
end
