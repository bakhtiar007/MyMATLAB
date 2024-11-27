% Define symbolic variables
syms y(x);

% Define the differential equation: dy/dx = y / (1 + x)
eqn = diff(y, x) == y / (1 + x);

% Solve the differential equation
y_solution = dsolve(eqn);

% Display the general solution
disp('General solution:');
disp(y_solution);

% Example: Apply the initial condition y(0) = 2 to find the particular solution
y_particular = dsolve(eqn, 'y(0) = 2');

% Display the particular solution
disp('Particular solution with initial condition y(0) = 2:');
disp(y_particular);

% Define the function from the particular solution for plotting
f = matlabFunction(y_particular);

% Plot the solution curve for y(x) = C1 * (1 + x)
fplot(f, [-5, 5]);  % Plot over the range x = -5 to 5
xlabel('x');
ylabel('y');
title('Solution Curve for y = C1(1 + x), with y(0) = 2');
grid on;

% Annotate the plot with the initial condition point
hold on;
plot(0, f(0), 'ro');  % Plot point at x = 0, y(0) = 2
text(0, f(0), ['  y(0) = ', num2str(f(0))], 'VerticalAlignment', 'bottom');
