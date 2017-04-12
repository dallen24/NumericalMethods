function [ x, df ] = secondderivativefunction( f,a,b,numpts )

a = a;
b = b ;
numpts = numpts;
values = linspace(a,b,numpts);
h = values(2) - values(1);
y = f(values);
dy = (y(3:end) + y(1:end-2) -2*y(2:end-1))/h^2;


x = values(2:end-1);
df = dy;


end

