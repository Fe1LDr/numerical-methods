clear
clc
clf
i=0:1:4;
t=(i+1)/5;
n=length(t);
f=cos(pi*t/3);
x0=[1/5, 2/5, 3/5, 4/5, 1];
f0=[0.9781, 0.9135, 0.8090, 0.6691, 0.5];
% ��������� ������� ���������� �� �������� ������
temp = repmat ( t' , 1 , length( t ) ) ;
power = repmat ( 0 : length (t)-1, length ( t ) , 1 ) ;
X = temp .^ power;
A=inv(X)*(f)';
syms x;
P=0;
n=length(A);
for i=1:1:n
P=P+A(i)*x^(i-1);
end
hold on; grid on;
xlabel('x'); ylabel('y');
ezplot(P,[-5 5])
plot(t,f,'r*')
df=cos(pi*2/3)-subs(P,2)
df=cos(pi*(-10)/3)-subs(P,-10)