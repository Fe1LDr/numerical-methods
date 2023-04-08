clear
clc
clf

fplot(@(x) x^3,[0 1])
hold on; grid on;
etalon = 1/4
[I_trapez1, I_simpson1] = integrate(@(x) x.^3, 0, 1, 10)
d(1) = abs(etalon - I_trapez1) 
d(2) = abs(etalon - I_simpson1)

[I_trapez2, I_simpson2] = integrate(@(x) x.^2, 0, 1, 10)
d2(1) = abs(1/3 - I_trapez2) 
d2(2) = abs(1/3 - I_simpson2)
[I_trapez3, I_simpson3] = integrate(@(x) x./2, 0, 1, 10)
d3(1) = abs(1/4 - I_trapez3) 
d3(2) = abs(1/4 - I_simpson3)
format long
[I_trapez4, I_simpson4] = integrate(@(x) 1./(1+x.^2), 0, 1, 408);
4*I_trapez4

pi_pr = 4*integrate_Runge(@(x) 1./(1+x.^2), 0, 1, 1e-6)

