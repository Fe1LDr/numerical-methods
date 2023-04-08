clear
clc
clf
hold on; grid on;
xlabel('x'); ylabel('y');
axis square
% функция Рунге
f=@(x) 1/(1+25*x^2);
fplot(f,[-5 5],'r')
% приближение равностоящими узлами
n=20;
i=1:1:(n+1);
x_p=-5+(i-1)*10/n;
for i=1:1:length ( x_p )
f_p(i)=f(x_p(i));
end
temp = repmat ( x_p' , 1 ,length ( x_p ) ) ;
power = repmat ( 0 : length (x_p)-1, length ( x_p ) , 1 ) ;
X = temp .^ power;
A=inv(X)*(f_p)';
syms x
P=0;
m=length(A);
for i=1:1:m
P=P+A(i)*x^(i-1);
end
ezplot(P,[-5 5])
df=f(4.5)-subs(P,4.5)

clear
% приближение чебышевскими узлами
figure(2);
f=@(x) 1/(1+25*x^2);
fplot(f,[-5 5],'r')
hold on; grid on;
xlabel('x'); ylabel('y');
n=10;
i=1:1:n;
x_p2=5*cos(pi*(2*i-1)/(2*n));
for i=1:1:length ( x_p2 )
f_p2(i)=f(x_p2(i));
end
temp = repmat ( x_p2' , 1 ,length ( x_p2 ) ) ;
power = repmat ( 0 : length (x_p2)-1, length ( x_p2 ) , 1 ) ;
X = temp .^ power;
A2=inv(X)*(f_p2)';
syms x
P2=0;
m=length(A2);
for i=1:1:m
P2=P2+A2(i)*x^(i-1);
end
ezplot(P2,[-5 5])
df=f(4.5)-subs(P2,4.5)