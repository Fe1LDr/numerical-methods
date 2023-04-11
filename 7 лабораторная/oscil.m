function [ F ] = oscil( t,y )
F=[y(2) ; -2*y(2)-10*y(1)+ sin(t) ] ;
end