function [ t,y ] = MyGeneralEuler(f,tmin,tmax,num_pts,IC )

t = linspace(tmin,tmax,num_pts);
y = zeros(length(IC),length(t));
y(:,1) = IC;
deltat = abs(t(2)- t(1));
for n = 2:num_pts
    y(:,n) = y(:,n-1)+ deltat*f(t(n-1),y(:,n-1));
end
y;
t;
end