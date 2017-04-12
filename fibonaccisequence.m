clear; clc; format compact

a(1) = 1;
a(2) = 2;
a(3) = 3;
n=3;
totalsum = 2;

while a(n) < 4000000
  
    n = n + 1;
    a(n) = a(n-1) + a(n-2);
 
    if mod(a(n),2) == 0
        totalsum = totalsum + a(n);
    end
   
end


disp('the sum of all even numbers is:')
totalsum


