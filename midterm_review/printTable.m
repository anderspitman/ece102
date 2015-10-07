function printTable( start, stop, increment )

% Print header and column headings
fprintf('-----------------------\n');
fprintf('|  %4s    |  %4s    |\n', 'X', 'Y');
fprintf('-----------------------\n');

x = start;
while x < stop
   y = 3*x^2 - 10*x + 9;
   fprintf('| %8.2f | %8.2f |\n', x, y);
   x = x + increment; 
end

% Print footer
fprintf('-----------------------\n');

end

