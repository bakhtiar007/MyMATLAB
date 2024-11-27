% MATLAB Code to Plot Direction Field for dy/dx = sin(y)

% Define the grid of x and y values
[x, y] = meshgrid(-10:0.5:10, -pi:0.5:pi);  % x from -10 to 10, y from -pi to pi

% Compute the slope (dy/dx) at each grid point using the differential equation dy/dx = sin(y)
dy_dx = sin(y);  % dy/dx = sin(y)

% Create a quiver plot to visualize the direction field
figure;
quiver(x, y, ones(size(x)), dy_dx, 'autoscale', 'on', 'Color', 'k');
xlabel('x');
ylabel('y');
title('Direction Field for dy/dx = sin(y)');
axis tight;
grid on;

% Add initial condition point at (0, -pi/3)
hold on;
plot(0, -pi/3, 'ro', 'MarkerFaceColor', 'r');  % Initial point (0, -pi/3)
text(0, -pi/3, '  y(0) = -\pi/3', 'VerticalAlignment', 'bottom');

% Add labels and adjust plot
axis([-10 10 -pi pi]);
