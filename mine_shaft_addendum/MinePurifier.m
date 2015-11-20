classdef MinePurifier < handle

    properties (GetAccess=protected)
        mineVolume
    end

    methods (Abstract)
        purificationAlgorithm(obj);
    end

    methods
        function obj = MinePurifier()
        end

        function [ freshAirVolumeTotal ] = purify(obj, mineVolume,...
                                                  freshAirVolumeStep,...
                                                  outputTypeFlag)
            obj.mineVolume = mineVolume;
            methaneVolume = mineVolume;
            methaneConcentration = 1;
            freshAirVolumeTotal = 0;
            iterationCount = 0;
            index = 1;
            
            if outputTypeFlag == 1
                fprintf('  Fresh Air      Methane    Concentration\n');        
                fprintf('-------------------------------------------\n');
            end
            
            while methaneConcentration >= 0.01

                [methaneVolume, methaneConcentration] = ...
                    obj.purificationAlgorithm(freshAirVolumeTotal,...
                                              freshAirVolumeStep,...
                                              methaneConcentration,...
                                              methaneVolume);

                methaneVolumeValues(index) = methaneVolume;
                freshAirVolumeValues(index) = freshAirVolumeTotal;

                if outputTypeFlag == 1
                    fprintf('%10.2f   %10.2f   %10.4f\n', freshAirVolumeTotal,...
                            methaneVolume, methaneConcentration);
                end

                index = index + 1;
                iterationCount = iterationCount + 1;
            end
            
            if outputTypeFlag == 1
                fprintf('-------------------------------------------\n');
            end

            fprintf('Final methane concentration: %f\n', methaneConcentration);
            fprintf('Number of iterations: %f\n', iterationCount);

            if outputTypeFlag == 2
                plot(methaneVolumeValues, freshAirVolumeValues);
            end
        end
    end
end
