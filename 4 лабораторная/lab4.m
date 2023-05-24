clear
clc
clf

y=@(x) cos(3*x);
h1=6*10^(-4)
h2=6.67*10^(-7)
x0=0.8;
dy1_h1=proiz(y,x0,h1)
dy1_h2=proiz(y,x0,h2)
format long
i=[1:1:60];
h=2.^(-i);
etalon=proiz(y,x0,10^(-10))
for j=1:1:length(h)
[dy1(j),dy2(j)]=proiz(y,x0,h(j));
delta1(j)=abs(dy1(j)-etalon);
delta2(j)=abs(dy2(j)-etalon);
end

dy1
dy2
delta1
delta2

hold on
grid on
axis square
plot(h,delta1,'o')
plot(h,delta2,'ro')
fplot(@(x) 4*x,[0 0.5])
fplot(@(x) 1/0.36*x^2,[0 0.5], 'r')
figure(2)
plot(i, delta1, 'o')
hold on; grid on;
%plot(i, delta2, 'ro')