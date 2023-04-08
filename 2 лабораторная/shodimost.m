function [x, iter] = shodimost(x0, a)
iter = 1;
eps = 1e-3;
while abs(x0^2 - a) > eps
    x0 = x0^2+x0-a;
    iter = iter + 1;
end
x = x0;
end

