function [I_trap, I_simp] = integrate(f, a, b, n)
h = (b-a)/n;
% вычисление интеграла методом трапеций
% составная формула трапеций
I_trap = (f(a) + f(b))/2;
for i = 1:n-1
    x_i = a + i*h;
    I_trap = I_trap + f(x_i);
end
I_trap = h*I_trap;

% вычисление интеграла методом Симпсона
I_simp = f(a) + f(b);
for i = 1:n-1
    x_i = a + i*h;
    if mod(i,2) == 0
        I_simp = I_simp + 2*f(x_i);
    else
        I_simp = I_simp + 4*f(x_i);
    end
end
I_simp = h*I_simp/3;
end