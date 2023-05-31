function [root, iter] = newton(f, df, x0, tol, n)
x = x0;
iter = 0;
x1 = 0;
while abs(x - n*f(x)/df(x) - x) > tol
    x = x - n*f(x)/df(x);
    iter = iter + 1;
end
root = x;
end