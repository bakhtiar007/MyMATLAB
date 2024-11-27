% MATLAB Code for Direction Field of dy/dx = 0.2xy

% Create a grid of points in the x and y range [-5, 5]
[x, y] = meshgrid(-5:1:5, -5:1:5); 

% Compute the slope (dy/dx) at each grid point using the differential equation
dy_dx = 0.2 * x .* y; 

% Create a quiver plot to visualize the direction field
figure;
quiver(x, y, ones(size(x)), dy_dx, 'autoscale', 'on');
xlabel('x');
ylabel('y');
title('Direction Field for \frac{dy}{dx} = 0.2xy');
axis tight;
grid on;
