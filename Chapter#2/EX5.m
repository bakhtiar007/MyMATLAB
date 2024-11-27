% Define symbolic variables
syms y(x)

% Define the differential equation: dy/dx = -x/y
eqn = diff(y, x) == -x / y;

% Solve the differential equation with the initial condition y(4) = -3
y_solution = dsolve(eqn, 'y(4) = -3');

% Display the solution
disp('The solution to the differential equation is:');
disp(y_solution);

% Plot the solution
f = matlabFunction(y_solution);

% Plot the solution curve for y(x)
fplot(f, [-5, 5]);  % Plot over the range x = -5 to 5
xlabel('x');
ylabel('y');
title('Solution Curve for dy/dx = -x/y with y(4) = -3');
grid on;

% Annotate the plot with the initial condition point
hold on;
plot(4, f(4), 'ro');  % Plot point at x = 4, y(4) = -3
text(4, f(4), ['  y(4) = ', num2str(f(4))], 'VerticalAlignment', 'bottom');
