clear; clc; clf; close all; format compact;

f = @(t,y) 2*y;
tmin = 0;
tmax = 1;
IC = 1;
n = 0;
for num_pts = 3:10:1000
   n = n+1;
   r = linspace(tmin,tmax,num_pts);
   [te,ye] = MyEuler1D(f,tmin,tmax,num_pts,IC);
   [tm,ym] =  MyMidpointMethod(f,tmin,tmax,num_pts,IC);
   [tr,yr] = MyRk4( f,tmin,tmax,num_pts,IC );
   real = exp(2*r);
   h(n) = r(2)-r(1);
   erroreuler(n) =  norm(real - ye);
   errormidpoint(n) = norm(real - ym);
   errorrung(n) = norm(real - yr);
   
end
loglog(h(1:end),erroreuler(1:end), 'b--');
hold on 
loglog(h(1:end),errormidpoint(1:end), 'r--');
hold on
loglog(h(1:end),errorrung(1:end), 'g--');
