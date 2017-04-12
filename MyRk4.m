function [ t,y ] = MyRk4( f,tmin,tmax,num_pts,IC )

t = linspace(tmin,tmax,num_pts);
y = zeros(length(t),1);
y(1) = IC;
h = t(2)-t(1);

for i = 1:num_pts
   temp1 = f(t(i),y(i));
   temp2 = f(t(i) + h/2, y(i) + h/2*temp1);
   temp3 = f(t(i) + h/2, y(i) + h/2*temp2);
   temp4 = f(t(i) + h, y(i) + h*temp3);
   y(i+1) = y(i) + h/6*(temp1 + 2*temp2 + 2*temp3 + temp4);
end


end

