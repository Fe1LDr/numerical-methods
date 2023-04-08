function [x, iter] = dih(f, a, b, tol)
iter = 0;
while (b - a) / 2 > tol
    c = (a + b) / 2;
    iter = iter + 1;
    if f(c) == 0
        break
    elseif f(a) * f(c) < 0
        b = c;
    else
        a = c;
    end
end

x = (a + b) / 2;
end

