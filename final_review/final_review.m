function final_review(xstart, xstop, increment, flag)

    x = xstart;
    
    if flag == 0
        fprintf('   x        y\n');
        fprintf('---------------\n');
    end
    
    index = 1;
    while x <= xstop
        xVals(index) = x;
        yVals(index) = exp(-x) * sin(x);
        
        if flag == 0
            fprintf('%6.2f   %6.2f\n', xVals(index), yVals(index));
        end
        x = x + increment;
        index = index + 1;
    end
    
    if flag == 1
        plot(xVals, yVals);
        grid on;
        title('Final Review');
        xlabel('X Values');
        ylabel('Y Values');
    end

end

