function [xdot] = QuadcopterDynamics(t, x, u)
    % QuadcopterDynamics computes the dynamics of a quadcopter.
    % Inputs:
    % t - Time (not used in this state-space representation)
    % x - State vector [x; y; z; phi; theta; psi; vx; vy; vz; p; q; r]
    % u - Control input vector [u1; u2; u3; u4]

    % State variables
    x_pos = x(1); % x position
    y_pos = x(2); % y position
    z_pos = x(3); % z position
    phi = x(4);   % roll
    theta = x(5); % pitch
    psi = x(6);   % yaw
    vx = x(7);    % velocity in x
    vy = x(8);    % velocity in y
    vz = x(9);    % velocity in z
    p = x(10);    % roll rate
    q = x(11);    % pitch rate
    r = x(12);    % yaw rate

    % Control inputs
    thrust = u(1);  % Thrust force
    tau_phi = u(2); % Moment about x-axis
    tau_theta = u(3); % Moment about y-axis
    tau_psi = u(4); % Moment about z-axis

    % Constants (placeholders, define based on the specific quadcopter)
    g = 9.81; % Gravity

    % Equations of motion (simplified)
    % Position dynamics
    xdot(1) = vx; % dx/dt = vx
    xdot(2) = vy; % dy/dt = vy
    xdot(3) = vz; % dz/dt = vz

    % Velocity dynamics
    xdot(7) = thrust; % dz/dt = thrust (upward force)
    xdot(8) = 0;      % No lateral forces in this model
    xdot(9) = -g;     % Gravity acting downward

    % Angular dynamics
    % Roll dynamics
    xdot(4) = p; % dphi/dt = p (roll rate)
    % Pitch dynamics
    xdot(5) = q; % dtheta/dt = q (pitch rate)
    % Yaw dynamics
    xdot(6) = r; % dpsi/dt = r (yaw rate)

    % Rotational dynamics (simplified)
    xdot(10) = tau_phi;   % dp/dt = roll moment
    xdot(11) = tau_theta; % dq/dt = pitch moment
    xdot(12) = tau_psi;   % dr/dt = yaw moment

    xdot = xdot'; % Returning as a column vector
end
