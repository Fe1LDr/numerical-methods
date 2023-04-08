function [root, iter] = newton(f, df, x0, tol, n)
x = x0;
iter = 0;
while abs(f(x)) > tol
    x = x - n*f(x)/df(x);
    iter = iter + 1;
end
root = x;
end