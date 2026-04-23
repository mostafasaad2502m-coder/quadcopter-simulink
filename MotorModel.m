% MotorModel.m

% This script models the motor dynamics of a quadcopter, converting
% control inputs to motor speeds (ω1, ω2, ω3, ω4)

function [omega1, omega2, omega3, omega4] = MotorModel(controlInputs)
    % Parameters
    K = 1.0; % Gain factor
    minRPM = 1000; % Minimum motor speed (RPM)
    maxRPM = 8000; % Maximum motor speed (RPM)

    % Convert control inputs to motor speeds
    omega1 = K * controlInputs(1);
    omega2 = K * controlInputs(2);
    omega3 = K * controlInputs(3);
    omega4 = K * controlInputs(4);

    % Limit motor speeds
    omega1 = min(max(omega1, minRPM), maxRPM);
    omega2 = min(max(omega2, minRPM), maxRPM);
    omega3 = min(max(omega3, minRPM), maxRPM);
    omega4 = min(max(omega4, minRPM), maxRPM);
end
