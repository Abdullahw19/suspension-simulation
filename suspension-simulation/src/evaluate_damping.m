function rms_acc = evaluate_damping(c, m, k, r, tspan, x0)
    [t, x] = ode45(@(t,x) suspension(t, x, m, c, k, r), tspan, x0);
    acc = compute_acceleration(t, x, m, c, k, r);
    rms_acc = sqrt(mean(acc.^2));
end