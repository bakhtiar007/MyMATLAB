% Define x range for plotting
x = linspace(-5, 5, 500);  % x values from -5 to 5

% Set up a figure for the plot
figure;
hold on;

% Plot several circles for different values of C
C_values = [5, 10, 15, 20, 25];  % Different values of C for different radii

for C = C_values
    % Compute the corresponding y values for each C (positive and negative root)
    y_positive = sqrt(2 * C - x.^2);   % Upper half of the circle
    y_negative = -sqrt(2 * C - x.^2);  % Lower half of the circle
    
    % Plot the positive and negative roots for each circle
    plot(x, y_positive, 'b--', 'LineWidth', 1);  % Blue dashed line for positive root
    plot(x, y_negative, 'b-', 'LineWidth', 1);  % Blue solid line for negative root
end

% Add the specific solution curve from the initial condition
y_specific = -sqrt(25 - x.^2);  % Solution corresponding to y(4) = -3
plot(x, y_specific, 'r-', 'LineWidth', 2);  % Red solid line for the specific solution

% Add labels and title
xlabel('x');
ylabel('y');
title('Family of Solution Curves for \frac{dy}{dx} = -\\frac{x}{y}');

% Add grid and legend
grid on;
legend('Family of Solution Curves', 'Specific Solution (y(4) = -3)', 'Location', 'SouthEast');
hold off;
