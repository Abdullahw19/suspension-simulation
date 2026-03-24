function animate_suspension(t, x)
    figure;
    axis([-0.5 0.5 -0.1 0.2])
    grid on
    xlabel('Position')
    ylabel('Height (m)')
    title('Suspension Animation')
    hold on

    road_y = 0;
    car = plot(0, x(1,1), 'ks', 'MarkerSize', 12, 'MarkerFaceColor', 'k');
    spring = plot([0 0], [road_y x(1,1)], 'b', 'LineWidth', 2);
    plot([-0.5 0.5], [road_y road_y], 'r', 'LineWidth', 3);

    for i = 1:length(t)
        set(car, 'YData', x(i,1))
        set(spring, 'YData', [road_y x(i,1)])
        drawnow
        pause(0.01)
    end
end