function [root, error] = NewtonsMethodError( f, df, x0, tol)

    if df(x0) == 0 % if dx is zero wont work
        fprintt('Derivative is zero')
        return
    end
    
    if nargin < 4 % if arguments are less than 4 do this
        tol = 1e-10;
    end
    
    x= x0; % assign x
    counter = 1; % assign counter
    
    while abs(f(x)) > tol % begin while
       xlist(counter) = x; % set x values in list
       x = x - f(x)/df(x); % find new x values
       counter = counter + 1; % increment counter
       
       if counter > 1000 % break if continues
          fprintt('Derivative is zero')
          break; 
       end
    end
        root = x; % assign root to x
        xlist;
        
        for n= 1:length(xlist)
            error(n) = abs(xlist(n) - root); % set the errors
        end
        error;
end 

