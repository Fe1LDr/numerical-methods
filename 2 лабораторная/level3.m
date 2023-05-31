clc
f = @(x) sin(x)-x./2;
df= @(x) cos(x)-1/2;
a = -3;
b = 0;
tol = 1e-6;
[x, iter] = dih(f, a, b, tol);
fprintf('Корень: %f\nЧисло итераций: %d\n', x, iter);

x0 = [-3, 0.1, 3];
tol = 1e-6;
roots = zeros(1,3);
iters = zeros(1,3);
for i = 1:3
    [roots(i), iters(i)] = newton(f, df, x0(i), tol, 1);
end
disp('Найденные корни:');
disp(roots);
disp('Число итераций:');
disp(iters);

roots = zeros(1,3);
roots(1)  = fzero(@(x) f(x), [-3, -1]);
roots(2)  = fzero(@(x) f(x), [-1, 1]);
roots(3)  = fzero(@(x) f(x), [1, 3]);
disp(roots);
