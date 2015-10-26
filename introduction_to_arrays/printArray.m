function printArray(array)

    [numRow numCol] = size(array);
    
    row = 1;
    col = 1;
    while row <= numRow
        while col <= numCol
            value = array(row, col);
            fprintf('%10.2f', value);
            col = col + 1;
        end
        fprintf('\n');
        col = 1;
        row = row + 1;
    end
end

