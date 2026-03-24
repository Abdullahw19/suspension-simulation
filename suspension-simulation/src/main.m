% System parameters
m = 250;
k = 15000;
c = 1000;

% Road input
r = @(t) 0.05 * (t >= 1);

% Time span and initial conditions
tspan = [0 5];
x0 = [0; 0];

% Solve ODE
[t, x] = ode45(@(t,x) suspension(t, x, m, c, k, r), tspan, x0);

% Compute acceleration
acc = compute_acceleration(t, x, m, c, k, r);

% Plot results
plot_results(t, x, acc);

% Animate suspension
animate_suspension(t, x);

% Optimisation
c_range = linspace(100, 5000, 50);
rms_values = arrayfun(@(ci) evaluate_damping(ci, m, k, r, tspan, x0), c_range);

figure;
plot(c_range, rms_values, 'LineWidth', 2)
xlabel('Damping Coefficient (Ns/m)')
ylabel('RMS Acceleration')
title('Optimising Suspension Damping')
grid on

[min_val, idx] = min(rms_values);
optimal_c = c_range(idx);
fprintf('Optimal damping coefficient: %.2f Ns/m\n', optimal_c);