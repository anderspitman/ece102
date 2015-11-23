function summaryPlot(mineVolume, freshAirIncrements)

    hold on;
    for i=1:length(freshAirIncrements)
        evacuateLowerBound(mineVolume, freshAirIncrements(i), 2);
        evacuateUpperBound(mineVolume, freshAirIncrements(i), 2);
    end
    
    grid on;
    title('Methane Concentration in Mine');
    xlabel('Fresh air Pumped in Mine (ft^3)');
    ylabel('Methane Concentration');

end

