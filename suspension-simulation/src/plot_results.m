function plot_results(t, x, acc)
    figure;
    subplot(3,1,1)
    plot(t, x(:,1), 'LineWidth', 2)
    xlabel('Time (s)')
    ylabel('Displacement (m)')
    title('Suspension Displacement')
    grid on

    subplot(3,1,2)
    plot(t, x(:,2), 'LineWidth', 2)
    xlabel('Time (s)')
    ylabel('Velocity (m/s)')
    title('Suspension Velocity')
    grid on

    subplot(3,1,3)
    plot(t, acc, 'LineWidth', 2)
    xlabel('Time (s)')
    ylabel('Acceleration (m/s^2)')
    title('Ride Comfort (Acceleration)')
    grid on
end