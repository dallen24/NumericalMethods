%% OfficeSpace 10.0.13

clear; clc; format compact; format long g

accounts = 100 + (100000-100)*rand(50000,1);
accounts = floor(100*accounts)/100;
illegal = 0;


for t = 1:10000
    templarge = accounts*(1+.05/365);
    temp = floor(100*templarge)/100;
    
    difference = templarge - temp ;
    illegal = sum(difference) + illegal;
    illegal = illegal*(1+.05/365);
    
    if illegal >= 1000000
        break;
    end
end

illegal
t

% notebook for part b
%% Gulf War

format long; 

% fraction a
x = 2^17+2^16+2^13+2^12+2^9+2^8+2^5+2^4+2^1+1;
y = 2^21;
fraction = x/y;

%absolute difference b 
difference = 1/10 - fraction;

% error time c
errortime = 360000 - 3600000*fraction

% scud missle distance d
distance = 3750 * 1/60 * 1/60 * errortime

   


    





