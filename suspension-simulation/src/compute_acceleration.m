function acc = compute_acceleration(t, x, m, c, k, r)
    acc = zeros(length(t),1);
    for i = 1:length(t)
        acc(i) = (1/m)*(k*r(t(i)) - c*x(i,2) - k*x(i,1));
    end
end