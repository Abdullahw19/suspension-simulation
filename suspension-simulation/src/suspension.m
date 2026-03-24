function dxdt = suspension(t, x, m, c, k, r)
    dxdt = zeros(2,1);
    dxdt(1) = x(2);
    dxdt(2) = (1/m) * (k*r(t) - c*x(2) - k*x(1));
end