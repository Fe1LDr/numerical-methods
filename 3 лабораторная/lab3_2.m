clear
clc
clf
format short
i=0:1:4;
t=(i+1)/5;
n=length(t);
f=cos(pi*t/3);
x0=[1/5, 2/5, 3/5, 4/5, 1];
f0=[0.9781, 0.8936, 0.7913, 0.6545, 0.5000]; %�������� �� �������� ������������
% ��������� ��������
P=@(x)f(1)*((x-t(2))*(x-t(3))*(x-t(4))*(x-t(5)))/((t(1)-t(2))*(t(1)-t(3))*(t(1)-t(4))*(t(1)-t(5)))+f(2)*((x-t(1))*(x-t(3))*(x-t(4))*(x-t(5)))/((t(2)-t(1))*(t(2)-t(3))*(t(2)-t(4))*(t(2)-t(5)))+f(3)*((x-t(1))*(x-t(2))*(x-t(4))*(x-t(5)))/((t(3)-t(1))*(t(3)-t(2))*(t(3)-t(4))*(t(3)-t(5)))+f(4)*((x-t(1))*(x-t(2))*(x-t(3))*(x-t(5)))/((t(4)-t(1))*(t(4)-t(2))*(t(4)-t(3))*(t(4)-t(5)))+f(5)*((x-t(1))*(x-t(2))*(x-t(3))*(x-t(4)))/((t(5)-t(1))*(t(5)-t(2))*(t(5)-t(3))*(t(5)-t(4)));
hold on; grid on;
xlabel('x'); ylabel('y');
title('��������� ��������');
fplot(P,[0.2 1],'black')
plot(t,f,'r*')

x0=[3/10, 5/10, 7/10, 9/10, 1];
h=@(z) cos(pi*z/3);
for i=1:1:5
P0(i)=P(x0(i));
cosin(i)=h(x0(i));
d(i)=abs(P0(i)-cosin(i));
end
disp('f0');
disp(f0);
disp('P0');
disp(P0);
disp('cosin');
disp(cosin);
disp('d');
disp(d);

syms x
for i=1:1:5
l(i)=(x-t(i));
end
w=abs(prod(l));
for j=1:1:5
R(j)=subs(w,x0(j))/factorial(5);
end
R


P(2);