function [t,y]= MyMidpointMethod(f,tmin,tmax,num_pts,IC)
t = linspace(tmin,tmax,num_pts);
y = zeros(length(t),1);
y(1) = IC;
deltat = t(2)- t(1);
ttemp = (t(2:end) + t(1:end-1))/2;
for n = 2:num_pts
    ytemp = y(n-1) + deltat/2*f(t(n-1),y(n-1));
    y(n) = y(n-1)+ deltat*f(ttemp(n-1),ytemp);
end
y;
t;
end
