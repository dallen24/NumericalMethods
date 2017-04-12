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

