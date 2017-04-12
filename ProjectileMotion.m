%% analytical plot
clear; clc;
syms d x t

theta_o= pi/6;
v_0 = 126;
g = 9.8;
theta = .5*asin((d*g)/v_0^2);
dtheta = diff(theta,d);
distance = 2*v_0^2*sin(t)*cos(t)/g;
velocity = diff(distance, t);
acceleration = diff(velocity,t);

ezplot(theta, [0,1700])
title('Analytic plot')
xlabel('distance')
ylabel('Theta')
% figure
% ezplot(velocity, [0,1]);
% figure 
% ezplot(acceleration)

%% Newton plot
clear; clc

v_0 = 126;
g = 9.8;
df = @(theta) 3240*cos(theta)^2 - 3240*sin(theta)^2;
counter = 1;
 
for d = 1: 1 : 1610
    f = @(theta) 2*v_0^2*sin(theta)*cos(theta)/g - d;
    [a b] = NewtonsMethodError(f,df,.1);
    yoyo(counter) = a;
    theds(counter) = d;
    counter = counter + 1;
    
end

plot( theds, yoyo)
xlabel('distance')
ylabel('angle')
title('Range of Missle Corresponding to Each Angle')

