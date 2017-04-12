function [ x, dy ] = firstderivativedata( filename,xrange,yrange)

xdata = xlsread(filename,xrange);
ydata = xlsread(filename,yrange);

x = xdata(2:end-1);
dy = (ydata(3:end) - ydata(1:end-2)) ./ (xdata(3:end) - xdata(1:end-2));


end


