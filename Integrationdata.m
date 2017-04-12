function [ area ] = Integrationdata(filename,xrange,yrange)

x = xlsread(filename,xrange);
y = xlsread(filename,yrange);


h = abs(x(2) - x(1));
steps = .5*(y(2:end) + y(1:end-1))*h;
area = sum(steps(1:end));

end

