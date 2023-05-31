clc
clf
clear
f = @(x) x.^5 - 7*x.^4 - 29*x.^3 + 235*x.^2 + 200*x - 2000;
df = @(x) 5*x.^4 - 28*x.^3 - 87*x.^2 + 470*x + 200;

disp('№1');
x = linspace(-10, 10, 1000);
y = f(x);
plot(x, y)
xlabel('x'); ylabel('y');
hold on; grid on;
title('Графический способ локализации корней');

x1 = -4;
x2 = fzero(@(x) f(x), [2, 6]);

plot([x1, x1], ylim, '--r')
plot([x2, x2], ylim, '--r')

p = [1, -7, -29, 235, 200, -2000];
roots(p)

disp('№2');
a = 2;
b = 6;
tol = 1e-6;
[x, iter] = dih(f, a, b, tol);
fprintf('Корень: %f\nЧисло итераций: %d\n', x, iter);

disp('№3-4');
x0 = [-10, -5, 0, 4.5, 10];
tol = 1e-6;
roots = zeros(1,5);
iters = zeros(1,5);
for i = 1:5
    [roots(i), iters(i)] = newton(f, df, x0(i), tol, 1);
end
disp('Найденные корни:');
disp(roots);
disp('Число итераций:');
disp(iters);
for i = 1:2
    [roots(i), iters(i)] = newton(f, df, x0(i), tol, 2);
end
for i = 3:5
    [roots(i), iters(i)] = newton(f, df, x0(i), tol, 3);
end
disp('Найденные корни:');
disp(roots);
disp('Число итераций:');
disp(iters);

disp('№5');
[x, iter] = sqrt_new(2)

disp('№6');
syms x
a=2;
x_p=1;
fun=x^2+x-a;
df= diff(fun,1);
df_=@(x1)2*x1 + 1 ;
a0(1)=solve('2*x + 1=-1',x);
a0(2)=solve('2*x + 1=1',x);
% a0
figure(2);
hold on
grid on
fplot(df_,[-10 10 -5 5])
line([-10 10],[0 0],'color','black')
line([0 0],[-5 5],'color','black')
line([-10 10],[1 1],'color','red')
line([-10 10],[-1 -1],'color','red')
plot(a0(1),df_(a0(1)),'green*')
plot(a0(2),df_(a0(2)),'green*')

a = 0.9;
x0 = -0.5;
[x, iter] = shodimost(x0, a)
%x0=-20;
%[x, iter] = shodimost(x0, a)

disp('№7');

x0  = fzero(@(x) f(x), [2, 6])
