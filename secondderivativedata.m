function [ x, dy  ] = secondderivativedata( filename, xrange, yrange )

xdata = xlsread(filename,xrange);
ydata = xlsread(filename,yrange);

x = xdata(2) - xdata(1);
dy = (ydata(3:end) + ydata(1:end-2) -2*ydata(2:end-1))/x^2;

end

