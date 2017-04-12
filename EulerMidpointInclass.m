clear; clc

f = @(y,t) (-1/3)*y+sin(t);
tmin = 0;
tmax = 15;
numpts = 1000;
IC = 1;
[t,y] = MyEuler1D(f,tmin,tmax,numpts,IC);
plot(t,y)

%% 
clear clc;

alpha = 1;
beta = .05;
delta = 1;
gamma = .01;
ICx = 1;
ICy = 2;
tmin = 0;
tmax = 15;
numpts = 1000;
f = @(x,y,t) alpha * x - beta * x * y;
g = @(x,y,t) -delta * y + gamma*x*y;
[x,y,t] = MyEuler2D(f,g,tmin,tmax,numpts,ICx,ICy);
plot(t,x,'r',t,y,'b')

%%
clear; clc

f = @(t,y) (-1/3)*y+sin(t);
tmin = 0;
tmax = 15;
numpts = 1000;
IC = 1;
[t,y] = MyMidpointMethod(f,tmin,tmax,numpts,IC);
plot(t,y)
