% Define the symbolic variable x and the constant c
syms x c;

% Define the function y = c * x^4
y = c * x^4;

% Calculate the first derivative of y with respect to x
y_prime = diff(y, x);  % y' = 4 * c * x^3

% Substitute y and y' into the equation xy' - 4y = 0
lhs = x * y_prime - 4 * y;

% Display the result of substitution (lhs should be 0 if it's a solution)
disp('Substituting y = c * x^4 into the equation xy'' - 4y = 0:');
disp(lhs);  % Should display 0 for a valid solution

% Plotting the piecewise solution
figure;
hold on;

% Define the piecewise solution: y = x^4 for x > 0, and y = -x^4 for x < 0
fplot(@(x) x.^4, [-5, 0], 'r', 'LineWidth', 2);  % Plot for x < 0
fplot(@(x) -x.^4, [0, 5], 'b', 'LineWidth', 2);  % Plot for x > 0

% Add labels and title
xlabel('x');
ylabel('y');
title('Piecewise-Defined Solution of xy'' - 4y = 0');
legend({'y = x^4 for x > 0', 'y = -x^4 for x < 0'}, 'Location', 'Best');
grid on;
axis tight;

% Display message indicating the plot is complete
disp('Plotting complete.');
hold off;
