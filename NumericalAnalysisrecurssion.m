clear; clc

format long; format compact
x(1) = 1/10;
for n = 1:50
    if x(n) <= .5;
         x(n+1) = 2*x(n);
    else
         x(n+1) = 2*x(n) - 1;   
    end
    
end

x
