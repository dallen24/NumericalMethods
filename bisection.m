function [ root ] = BissectionFunction( f, a, b, tolerance )
%Bissection Summary of this function goes here
%   finds the roots numerically

if nargin < 4 % set up the tolerence
   tolerance = 1e-6; 
end

if f(a) *f(b) >= 0
    fprintf('doesn''t work intermediate value mess up\n');
    return
end

counter = 0;
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
    root = (a+b)/2;
end

