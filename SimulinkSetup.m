% SimulinkSetup.m

% Initialization script for setting up parameters, initial conditions, and simulation settings

% Parameters
params.kp = 1.0; % Proportional gain
params.kd = 0.5; % Derivative gain
params.ki = 0.1; % Integral gain

% Initial conditions
initial_conditions.position = [0; 0; 0]; % Initial position [x; y; z]
initial_conditions.velocity = [0; 0; 0]; % Initial velocity [vx; vy; vz]
initial_conditions.orientation = [0; 0; 0]; % Initial orientation [roll; pitch; yaw]

% Simulation settings
simTime = 10; % Total simulation time in seconds
solverType = 'ode45'; % Solver used for simulation
stepSize = 0.01; % Step size for the solver

% Save all setups to the base workspace
assignin('base', 'params', params);
assignin('base', 'initial_conditions', initial_conditions);
assignin('base', 'simTime', simTime);
assignin('base', 'solverType', solverType);
assignin('base', 'stepSize', stepSize);

fprintf('Simulink setup complete.\n');
