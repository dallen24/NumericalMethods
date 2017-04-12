function [ t,y ] = MyEuler1D(f,tmin,tmax,num_pts,IC )

t = linspace(tmin,tmax,num_pts);
y = zeros(length(t),1);
y(1) = IC;
deltat = t(2)- t(1);
for n = 2:num_pts
    y(n) = y(n-1)+ deltat*f(t(n-1),y(n-1));
end
y;
t;
end

