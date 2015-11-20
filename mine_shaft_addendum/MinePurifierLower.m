classdef MinePurifierLower < MinePurifier
    
    methods
        function [methaneVolume, methaneConcentration] = ...
            purificationAlgorithm(obj, freshAirVolumeTotal,...
                                  freshAirVolumeStep,...
                                  currentMethaneConcentration,...
                                  methaneVolume)

            freshAirVolumeTotal = freshAirVolumeTotal + freshAirVolumeStep;
            methaneVolumeChange = ...
                (currentMethaneConcentration * freshAirVolumeStep);
            methaneVolume = methaneVolume - methaneVolumeChange;
            methaneConcentration = (methaneVolume / obj.mineVolume);
        end
    end
end
