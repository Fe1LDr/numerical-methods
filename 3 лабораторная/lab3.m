clear
clc
clf
i=0:1:4;
t=(i+1)/5;
f=cos(pi*t/3);
hold on; grid on;
xlabel('x'); ylabel('y');
title('�������� ������������');

% ���������� �������� ������� �������
fplot(@(x) cos(pi*x/3),[0.2 1])
% ������� �������� ������������
x0=[1/5, 2/5, 3/5, 4/5, 1];
p=1;
f0(1)=(f(1)-1)/(2/5-1/5)*(x0(1)-0)+1;
f0(2)=(f(p+2)-f(p))/(t(p+2)-t(p))*(x0(2)-t(p))+f(p);
f0(3)=(f(p+3)-f(p+1))/(t(p+3)-t(p+1))*(x0(3)-t(p+1))+f(p+1);
f0(4)=(f(p+4)-f(p+2))/(t(p+4)-t(p+2))*(x0(4)-t(p+2))+f(p+2);
f0(5)=(f(p+4)-f(p+2))/(t(p+4)-t(p+2))*(x0(5)-t(p+2))+f(p+2);
disp('f0');
disp(f0);
% ���������� ������ �������� ������������
for k=1:1:(length(i)-1)
line([t(k) t(k+1)],[f(k) f(k+1)],'color','black')
end
plot(x0,f,'r*')
% ������� �����������
% x0=[3/10, 5/10, 7/10, 9/10, 1];
x0=[1/5, 2/5, 3/5, 4/5, 1];
h=@(c) cos(pi*c/3);
for u=1:1:5
df(u)=abs(h(x0(u))-f0(u));
end
disp('df');
disp(df);




