function [x, iter] = sqrt_new(a)
x0 = a/2;
eps = 1e-6;
iter = 0;
while abs(x0^2 - a) > eps
    x0 = 1/2*(a/x0 + x0);
    iter = iter + 1;
end
x = x0;
end

