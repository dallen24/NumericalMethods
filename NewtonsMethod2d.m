function [ root] = NewtonsMethod2d( f, df, x0, tol)

    if nargin < 4
        tol = 1e-6;
    end
    
    if diff(x0) == 0
        fprintt('Derivative is zero')
        return
    end
    
    counter = 1;
    x= x0;
    
    while abs(f(x)) > tol
       x = x - f(x)/df(x);
       
       if counter > 1000
          break; 
       end
       
       counter = counter + 1;
    end
        root = x;
        
end 
