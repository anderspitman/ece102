function makePlot()

    d = 0;
    index = 1;
    
    while d <= 8
        d = d + 0.1;
        dVals(index) = d;
        aVals(index) = forceA(d);
        bVals(index) = forceB(d);
        cVals(index) = forceC(d);
        index = index + 1;
    end
    
    plot(dVals, aVals, 'b');
    hold on;
    grid on;
    plot(dVals, bVals, 'r');
    plot(dVals, cVals, 'm');

end

