clear; clc

f = @(t,y) [-.5*y(2) - y(1) *y(2);
            -.25*y(2) - sin(t)*y(1);
            -.5*y(3) *cos(2*pi*t) + .5*y(1) *y(2)];

IC = [1;3;0];
tmin = 0
tmax = 1;
numpts = 100;

[t,y] = MyGeneralEuler(f,tmin,tmax,numpts,IC);

plot(t,y(1,:),'b')
hold on
plot(t,y(2,:),'r')

%%
clear; clc
f= @(t,y) -1/3*y*sin(t);
tmin = 0;
tmax = 1;
num_pts = 100;
IC = 1;
[t,y] = BackwardEuler(f,tmin,tmax,num_pts,IC);