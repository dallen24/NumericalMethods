function [ t,y ] = BackwardEuler( f,tmin,tmax,num_pts,IC )

t = linspace(tmin,tmax,num_pts);
y = zeros(length(t),1);
y(1) = IC;
deltat = t(2)- t(1);
for n = 1:length(t) - 1
    F= @(YNPI) y(n) - YNP1 + deltat*f(t(n+1),YNP1);
    ytemp = y(n);
    for j = 1:10
        G = (F(ytemp + F(ytemp)) -F(ytemp))/F(ytemp);
        ytemp = ytemp -F(temp)/ G;
    end
    y(n+1) = ytemp;
end
t;
y;

end