function plotInsect()

figure(1);
fplot('offsetContainers(50, 30, 100, x)', [1.78, 1.79, 115, 125]);
title('Case 1');
xlabel('radius');
ylabel('number of containers');
grid on;

figure(2);
fplot('offsetContainers(100, 50, 30, x)', [4.6, 4.7, 115, 125]);
title('Case 2');
xlabel('radius');
ylabel('number of containers');
grid on;

figure(3);
fplot('offsetContainers(30, 100, 50, x)', [3.567, 3.576, 110, 115]);
title('Case 3');
xlabel('radius');
ylabel('number of containers');
grid on;

end

