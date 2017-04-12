function [ x,y,t ] = MyEuler2D( f,g,tmin,tmax,num_pts,ICx,ICy )
t = linspace(tmin,tmax,num_pts);
x = zeros(length(t),1);
x(1) = ICx;
y = zeros(length(t),1);
y(1) = ICy;
deltat = t(2)- t(1);
for n = 2:num_pts
    x(n) = x(n-1)+ deltat*f(x(n-1),y(n-1),t(n-1));
    y(n) = y(n-1)+ deltat*g(x(n-1),y(n-1),t(n-1));
end
y;
t;
x;
end
