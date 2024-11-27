% Define the x values for the plot
x = linspace(-10, 10, 500);  % Choose a large range for better visualization

% Define the family of solutions y(x) = c*x - x*cos(x)
% We will plot solutions for different values of the parameter c
c_values = [-3, -1, 0, 1, 3];  % Selected values of c to plot

% Create a figure for the plots
figure;
hold on;

% Loop through each value of c and plot the corresponding solution
for c = c_values
    y = c * x - x .* cos(x);  % Evaluate the solution for the current value of c
    plot(x, y, 'DisplayName', sprintf('c = %.1f', c), 'LineWidth', 2);
end

% Customize the plot
xlabel('x');
ylabel('y');
title('Family of Solutions for y(x) = c*x - x*cos(x)');
legend('show');
grid on;
axis tight;

% Hold off to finish the plot
hold off;
