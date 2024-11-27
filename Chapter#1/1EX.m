% Define the x values for the graph
x = linspace(-5, 5, 500);

% Define the implicit equation solutions y1(x) and y2(x)
y1 = sqrt(25 - x.^2);  % Top half of the circle
y2 = -sqrt(25 - x.^2); % Bottom half of the circle

% Create the figure
figure;
hold on;
% Plot the top half of the circle (explicit solution y1(x))
plot(x, y1, 'b', 'LineWidth', 2);
% Plot the bottom half of the circle (explicit solution y2(x))
plot(x, y2, 'r', 'LineWidth', 2);
% Plot the implicit equation solution (circle)
theta = linspace(0, 2*pi, 500);
x_circle = 5 * cos(theta);
y_circle = 5 * sin(theta);
plot(x_circle, y_circle, 'k--', 'LineWidth', 1); % Implicit solution
% Set axis limits and labels
axis equal;
xlabel('x');
ylabel('y');
title('Verification of Implicit and Explicit Solutions');
legend('y = sqrt(25 - x^2)', 'y = -sqrt(25 - x^2)', 'Implicit Solution: x^2 + y^2 = 25');
grid on;
hold off;
