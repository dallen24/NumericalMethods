%% multiples 3 and 5
clear; clc; format compact

multuples = zeros(1000);
total = 0;
counter = 1;
for n = 1:1:1000
    if mod(n,3) == 0 || mod(n,5) == 0
        total = total + n;
        multuples(counter) = n;
        counter = counter + 1;
    end  
end

for x = 1:counter
    multuples(x);
end

disp('the total is')
total

%% fib sequence
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
