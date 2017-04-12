function [ x df ] = firstderivativefunction( f,a,b,numpts )


a = a;
b = b ;
numpts = numpts;
values = linspace(a,b,numpts);
h = values(2) - values(1);
y = f(values);
dy = (1/h) * (y(2:end) -y(1:end-1));


x = values(1:end-1);
df = dy;
end

