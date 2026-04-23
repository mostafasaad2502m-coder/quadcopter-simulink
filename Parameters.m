% Quadcopter Parameters

% Inertia moments (kg*m^2)
I_x = 0.1;   % Moment of inertia around x-axis
I_y = 0.1;   % Moment of inertia around y-axis
I_z = 0.2;   % Moment of inertia around z-axis

% Mass (kg)
m = 1.5;     % Mass of the quadcopter

% Aerodynamic drag coefficient (N*m^2)
k_rax = 0.01; % Aerodynamic drag coefficient

% Motor constants
L_n = 6.0;   % Motor torque constant (N*m/A)
I_b = 0.01;  % Motor inertia (kg*m^2)
I_d = 0.02;  % Other motor constant

% Gravity (m/s^2)
g = 9.81;     % Acceleration due to gravity

% Other constants
K = 1.0;     % Control gain constant
T = 0.1;     % Time constant
