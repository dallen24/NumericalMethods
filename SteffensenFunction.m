function [ root error ] = SteffensenFunction(  f, a, tol  )

if nargin < 3
   tol = 1e-6 ;
end

x = a;
counter = 1;

while abs(f(x)) > tol
   g = (f(x + f(x)) -f(x))/f(x);
   x = x - f(x)/g;
   xlist(counter) = x;
   
   
   if counter > 1000
      break; 
   end
   
   counter = counter + 1;
    
end

root = x;

   for n= 1:length(xlist)
     error(n) = abs(xlist(n) - root); % set the errors
   end
   error;

end

