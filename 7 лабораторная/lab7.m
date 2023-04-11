clear
clc
clf

h = 0.05;
x = 0:h:3;
y(1) = 1;
% ������� ��� ������� ������
for i = 1:length(x)-1
    y(i+1) = y(i) + h*x(i)^2;
end

y_analytic = 1 + (x.^3)/3;
y;
y_analytic;
dy = y_analytic-y;
max(dy)
% ���������� ��������
plot(x, y, 'o-', x, y_analytic, 'r--');
hold on; grid on;
legend('��������� �������', '������������� �������');
xlabel('x');
ylabel('y');