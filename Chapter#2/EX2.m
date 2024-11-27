% MATLAB Code for Plotting Solution Curves for y = c*e^(0.2*x^2)

% Create a vector of x values
x_vals = linspace(-5, 5, 100); 

% Define different values for the constant c
c_values = [-2, -1, 0.5, 1, 2];

% Create a figure for the solution curves
figure;
hold on;

% Plot the solution curves for each value of c
for c = c_values
    y_vals = c * exp(0.2 * x_vals.^2);  % Compute y for each c
    plot(x_vals, y_vals, 'LineWidth', 2);
end

% Labeling the plot
xlabel('x');
ylabel('y');
title('Solution Curves for y = c*e^{0.2x^2}');
legend(arrayfun(@(c) sprintf('c = %0.1f', c), c_values, 'UniformOutput', false));
grid on;
hold off;
