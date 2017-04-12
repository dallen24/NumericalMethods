% bisection method
clear; clc;

%define an anonymous function handle for f(x)
f = @(x) x^2 - 2;
% need an interval
a = 0;
b = 2;

tolerance =  1e-5;
counter = 0;
% while loop to do the bisection algorithm
while abs( f( (a+b)/2)) > tolerance
    m = (a+b)/2;
    fa = f(a);
    fb = f(b);
    fm = f(m);
    
    if fm*fa < 0
        b = m;
    elseif abs(f(m)) <= tolerance
        break;
    else
        a = m;
    end
    if counter > 10000
        fprintf('runaway!\n')
       break ;
    end
    counter = counter + 1;
end

m = (a+b)/2


