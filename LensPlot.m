% Parameters for the lens
a = 1; % Semi-major axis length
b = 5; % Semi-minor axis length
x_center = 0; % X-coordinate of the center
y_center = 0; % Y-coordinate of the center

% Create an array of angles from 0 to 2*pi
theta = linspace(0, 2*pi, 100);

% Parametric equations for the ellipse
x = a * cos(theta) + x_center;
y = b * sin(theta) + y_center;

% Plot the lens
figure;
fill(x, y, 'c'); % Fill the ellipse with color
axis equal; % Equal scaling for both axes
grid on;
xlabel('X-axis');
ylabel('Y-axis');
title('Positive Lens Shape');