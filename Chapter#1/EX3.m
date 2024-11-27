% Define the symbolic variable t and constants c1, c2
syms t c1 c2;

% Define the functions x1 = c1 * cos(4t) and x2 = c2 * sin(4t)
x1 = c1 * cos(4*t);   
x2 = c2 * sin(4*t);   

% Calculate the first and second derivatives of x1 and x2
x1_prime = diff(x1, t);    % First derivative of x1
x1_double_prime = diff(x1_prime, t);   % Second derivative of x1

x2_prime = diff(x2, t);    % First derivative of x2
x2_double_prime = diff(x2_prime, t);   % Second derivative of x2

% Display the derivatives
disp('Derivatives of x1 = c1 * cos(4t):');
disp(['First derivative: ', char(x1_prime)]);
disp(['Second derivative: ', char(x1_double_prime)]);

disp(' '); % Blank line for better separation

disp('Derivatives of x2 = c2 * sin(4t):');
disp(['First derivative: ', char(x2_prime)]);
disp(['Second derivative: ', char(x2_double_prime)]);

% Numerical values for the constants c1 and c2
c1_value = 2;  % Set an example value for c1
c2_value = 1;  % Set an example value for c2

% Define the time range
t_vals = linspace(0, 2*pi, 500);  % Time from 0 to 2*pi, 500 points

% Define the solutions with the constants c1_value and c2_value
x1_vals = c1_value * cos(4 * t_vals);  % Solution for x1
x2_vals = c2_value * sin(4 * t_vals);  % Solution for x2

% Plot the solutions
figure;
hold on;

% Plot x1 = c1 * cos(4t)
plot(t_vals, x1_vals, 'r', 'LineWidth', 2, 'DisplayName', sprintf('x = %.1f cos(4t)', c1_value));

% Plot x2 = c2 * sin(4t)
plot(t_vals, x2_vals, 'b', 'LineWidth', 2, 'DisplayName', sprintf('x = %.1f sin(4t)', c2_value));

% Customize the plot
xlabel('Time (t)');
ylabel('x(t)');
title('Solutions of the Differential Equation x'''' + 16x = 0');
legend('show');
grid on;
axis tight;

% Display message indicating end of plotting
disp('Plotting complete.');
hold off;
