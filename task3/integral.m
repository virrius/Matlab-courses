function [J] = integral(nodes_t, nodes_x, t)
    h=1/length(t);
    N=8;
    x = lagrange(nodes_t, nodes_x, t);
    dx = polyval(polyder(polyfit(t, x, N)),t);     
    J = sum(Func(t, x, dx) * h);

end
