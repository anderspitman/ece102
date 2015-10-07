function plotInsect( dimen )

fplot('offsetContainers(50, 30, 100, x)', [dimen(1), dimen(2), dimen(3), dimen(4)]);
title('Case 1');
xlabel('radius');
ylabel('number of containers');
grid on;

end

