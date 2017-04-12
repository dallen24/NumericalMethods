clear; clc;

temp = 0;
total = 0;

for n = 1:100
   temp = n^2; 
   total = temp + total;
end

totaltwo = 0;
for n = 1:100
    totaltwo = n + totaltwo;
end
totaltwo = totaltwo^2;

final = totaltwo-total