function [ root ] = regulafalsi( f, a, b, tolerance)

if nargin < 4
tolerance = 1e-6;
end


if f(a) *f(b) >= 0
    fprintf(' intermediate value doesn''t apply up\n');
    return
end

counter = 1;

while  counter < 1000
    
m = (f(a)-f(b))/(a-b);
k = f(a)-m*a;
newx = -k/m;
    if f(newx) * f(b) < 0 
        a = newx;
    else
        b = newx;
    end
   
 counter = counter + 1;
 
 if abs(f(a)) < tolerance
     break;
 elseif abs(f(b))< tolerance
         break;
     end
    
 
end
    if a < tolerance
        root = newx;
    else
        root = newx;
    end
    
    root;
    counter
end


