function [ root, error ] = SecantFunction( f, a, b, tol )
    
if nargin < 4
   tol = 1e-6 ;
end

xn = b;
x = a;
counter = 1;

while abs(f(xn)) > tol
   xlist(counter) = xn;
   temp = xn;
   xn = xn - (f(xn)*(xn - x))/(f(xn) - f(x));
   x = temp;
  
   
   if counter > 1000
      break; 
   end
   
   counter = counter + 1;
end
xlist;
root = xn;

   for n= 1:length(xlist)
     error(n) = abs(xlist(n) - root); % set the errors
   end
   error;

end

