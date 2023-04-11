clc
clear
clf
Y0 = [ 1 ; 0 ] ; % вектор начальных условий
[T1 Y1] = ode23( 'oscil' , [ 0 15 ] ,Y0 );
[T2 Y2] = ode45( 'oscil' , [ 0 15 ] ,Y0 );
c1=87/85;
c2=26/85;
f=@(t)exp(-t)*(c1*cos(3*t)+c2*sin(3*t))+1/85*(9*sin(t)-2*cos(t));
df=@(t)exp(-t)*(-3*c1*sin(3*t)+3*c2*cos(3*t))-exp(-t)*(c1*cos(3*t)+c2*sin(3*t))+1/85*(9*cos(t)+2*sin(t));
% построение графиков функции
figure(1)
plot(T1,Y1(:,1),'red')
title('ode23')
legend('y')
hold on; grid on;

figure(2)
plot(T2,Y2(:,1),'black')
title('ode45')
legend('y')
hold on; grid on;

figure(3)
fplot(f,[0 15],'blue')
title('analitic')
legend('y')
hold on; grid on;
% построение графиков производной
figure(4)
plot(T1,Y1(:,2),'red')
title('ode23')
legend('dy')
hold on; grid on;

figure(5)
plot(T2,Y2(:,2),'black')
title('ode45')
legend('dy')
hold on; grid on;

figure(6)
fplot(df,[0 15],'blue')
title('analitic')
legend('dy')
hold on; grid on;


