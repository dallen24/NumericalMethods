clear; clc; format compact
syms z

f = @(x) sin(x)
y= sin(z)

[values, df] = firstderivativefunction(f,-5,5,100);
[v,d] = secondderivativefunction(f,-5,5,100);

length(values);
length(df);
length(v);
length(d);

plot(values(1:end-1),df(1:end))
hold on
ezplot(y, [-5,5,-5,5])
hold on 
plot(v(2:end-1),d(1:end))

legend('value','func','second')
%%
%%2520 is the smallest number that can be divided by each of the numbers from 1 to 10 
% without any remainder. Write code to find the smallest positive number that is evenly 
%divisible by all of the numbers from 1 to 20?

clear; clc;


nums = (1:20);
thenum = 0;

for n = 1:1000000000
    if mod(n,nums) == 0
        thenum = n;
        break;
    end
end
thenum


