function [ dy0_1, dy0_2 ] = proiz( y, x0, epsilon )
h_1=epsilon;
h_2=epsilon;
dy0_1=(y(x0+h_1)-y(x0))/h_1;
dy0_2=(y(x0+h_2)-y(x0-h_2))/(2*h_2);
end