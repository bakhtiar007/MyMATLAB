% Define the system of differential equations
f = @(t, y) [y(2); -16 * y(1)];  % Example: x' = y2, y' = -16*x

% Initial conditions [x(0), y(0)] = [1, 0]
y0 = [1; 0];

% Time span for the solution
tspan = [0 10];

% Solve the system using ode45
[t, y] = ode45(f, tspan, y0);

% Plot the solutions
figure;
plot(t, y(:,1), 'r', 'LineWidth', 2); % x(t) = y(:,1)
hold on;
plot(t, y(:,2), 'b', 'LineWidth', 2); % y(t) = y(:,2)
xlabel('Time t');
ylabel('Solutions');
legend({'x(t)', 'y(t)'});
grid on;
title('Solutions to the system of differential equations');
