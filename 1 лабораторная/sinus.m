function [ x, sum, num ] = sinus( y )
u=y;
sinu=0;
i=0;
while abs(u) > 10^(-14)
    sinu=sinu+u;
    u=u*(-y^2)/((2*i+2)*(2*i+3));
    sum(i+1)=sinu;
    num(i+1)=u;
    i=i+1;
end
x=sinu;
end

