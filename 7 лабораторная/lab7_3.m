clear
clc
clf
Y0 = [ log(0.01) ; 1/0.01 ] ;
[t y] = ode45( 'oscil2', [0.01 1] ,Y0 );
plot(t,y(:,1))
hold on; grid on;
xlabel('t'); ylabel('y')
fplot(@(t) log(t),[0.01 1],'r')
title('d2y=-1/t^2, y(0.01)=ln(0.01)')
