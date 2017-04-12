%% Differentiating to determine bounds of integration
clear; clc; clf;

xdata1 = ('A56:A85');
ydata1 = ('B56:B85');

filename = ('ngc1275')

[x1,df1] = firstderivativedata(filename,xdata1,ydata1);

plot(x1,df1)
title '3800 Peak Derivative Plot'
ylabel ''
xlabel 'Wavelength (Angstroms)'
legend('lower and upper bounds of integration')
grid on
hold on
plot(3772,0,'r*')
plot(3812,0,'bl*')

figure

xdata2 = ('A711:A740');
ydata2 = ('B711:B740');

[x2,df2] = firstderivativedata(filename,xdata2,ydata2);

plot(x2,df2)
title '5100 Peak Derivative Plot'
ylabel ''
xlabel 'Wavelength (Angstroms)'
grid on
hold on
%plot(3772,0,'r*')
%plot(3812,0,'r*')

figure

xdata3 = ('A1362:A1398');
ydata3 = ('B1362:B1398');

[x3,df3] = firstderivativedata(filename,xdata3,ydata3);

plot(x3,df3)
title '6400 Peak Derivative Plot'
ylabel ''
xlabel 'Wavelength (Angstroms)'
grid on
hold on
plot(6396,0,'r*')
plot(6436,0,'bl*')

figure

xdata4 = ('A1499:A1541');
ydata4 = ('B1499:B1541');

[x4,df4] = firstderivativedata(filename,xdata4,ydata4)

plot(x4,df4)
title '6700 Double Peak Derivative Plot'
ylabel ''
xlabel 'Wavelength (Angstroms)'
grid on
hold on
plot(6668,0,'r*')
plot(6726,0,'bl*')
%% Baseline Creation
clc;clear;clf;
a = 4.5
b = 8.5

x = linspace(a,b,1000)

%baseline = @(x) 7*10^(-87)*(x).^6-2*10^(-71)*(x).^5+ 4*10^(-56)*(x).^4-3*10^(-41)*(x).^3+1*10^(-26)*(x).^2-0.000000000003*(x)+270.82
baseline = @(x) (-0.0238*x.^3+0.409*x.^2-2.4404*x+6.0068)/(10^14)
% Intensity as a fxn of frequency, scaled down by 10^14.
plot(x,baseline(x))

%% Integrating Peak1
clear; clc;

xdata1 = ('C64:C80');
ydata1 = ('B64:B80');
numpts = 100000;
filename = ('ngc1275');

[predicted1] = Integrationdata(filename,xdata1,ydata1);
predicted1 = abs(predicted1);
baseline = @(x) (-0.0238*x.^3+0.409*x.^2-2.4404*x+6.0068);
xpts = xlsread(filename,xdata1);
predicted1 = predicted1 - SimpsonFunction(baseline,xpts(length(xpts))/10^14,xpts(1)/10^14,numpts)*10^14
counter = 1;

for n = 59:69
   lower = n;
   upper = n+16;
   lower = int2str(lower);
   upper = int2str(upper);
   xrange = strcat('C',lower,':','C',upper);
   yrange = strcat('B',lower,':','B',upper);
   xdata = xlsread(filename,xrange);
   a = xdata(length(xdata)) /10^14;
   b = xdata(1) /10^14;
   x = linspace(a,b,10000);
   baselineArea1 = SimpsonFunction(baseline,a,b,numpts)*10^14;
   Area1(counter) = Integrationdata(filename,xrange,yrange) - baselineArea1;
   counter = counter + 1;
end
Area1;
high = max(Area1)
lower = min(Area1)


%% peak 2
clear; clc;
xdata2 = ('C711:C732');
ydata2 = ('B711:B732');
numpts = 100000;
filename = ('ngc1275');

[predicted2] = Integrationdata(filename,xdata2,ydata2);
predicted2 = abs(predicted2)
baseline = @(x) (-0.0238*x.^3+0.409*x.^2-2.4404*x+6.0068);
xpts = xlsread(filename,xdata2)
predicted2 = predicted2 - SimpsonFunction(baseline,xpts(length(xpts))/10^14,xpts(1)/10^14,numpts)*10^14
counter = 1;

for n = 706:716
   lower = n;
   upper = n+21;
   lower = int2str(lower);
   upper = int2str(upper);
   xrange = strcat('C',lower,':','C',upper);
   yrange = strcat('B',lower,':','B',upper);
   xdata = xlsread(filename,xrange);
   a = xdata(length(xdata)) /10^14;
   b = xdata(1) /10^14;
   x = linspace(a,b,10000);
   baselineArea2 = SimpsonFunction(baseline,a,b,numpts)*10^14;
   Area2(counter) = Integrationdata(filename,xrange,yrange) - baselineArea2;
   counter = counter + 1;
end
Area2;
high = max(Area2)
lower = min(Area2)

%% Peak 3
clear; clc;
xdata3 = ('C1374:C1392');
ydata3 = ('B1374:B1392');
numpts = 100000;
filename = ('ngc1275');

[predicted3] = Integrationdata(filename,xdata3,ydata3);
predicted3 = abs(predicted3);
baseline = @(x) (-0.0238*x.^3+0.409*x.^2-2.4404*x+6.0068);
xpts = xlsread(filename,xdata3);
predicted3 = predicted3 - SimpsonFunction(baseline,xpts(length(xpts))/10^14,xpts(1)/10^14,numpts)*10^14
counter = 1;

for n = 1369:1379
   lower = n;
   upper = n+18;
   lower = int2str(lower);
   upper = int2str(upper);
   xrange = strcat('C',lower,':','C',upper);
   yrange = strcat('B',lower,':','B',upper);
   xdata = xlsread(filename,xrange);
   a = xdata(length(xdata)) /10^14;
   b = xdata(1) /10^14;
   x = linspace(a,b,10000);
   baselineArea3 = SimpsonFunction(baseline,a,b,numpts)*10^14;
   Area3(counter) = Integrationdata(filename,xrange,yrange) - baselineArea3;
   counter = counter + 1;
end
Area3;
high = max(Area3)
lower = min(Area3)

%% Peak 4
clear; clc; format compact
xdata4 = ('C1503:C1524');
ydata4 = ('H1503:H1524');
numpts = 100000;
filename = ('ngc1275');

[predicted4] = Integrationdata(filename,xdata4,ydata4);
predicted4 = abs(predicted4);
baseline = @(x) (-0.0238*x.^3+0.409*x.^2-2.4404*x+6.0068);
xpts = xlsread(filename,xdata4);
predicted4 = predicted4 - SimpsonFunction(baseline,xpts(length(xpts))/10^14,xpts(1)/10^14,numpts)*10^14
counter = 1;

for n = 1498:1508
   lower = n;
   upper = n+21;
   lower = int2str(lower);
   upper = int2str(upper);
   xrange = strcat('C',lower,':','C',upper);
   yrange = strcat('B',lower,':','B',upper);
   xdata = xlsread(filename,xrange);
   a = xdata(length(xdata)) /10^14;
   b = xdata(1) /10^14;
   x = linspace(a,b,10000);
   baselineArea4 = SimpsonFunction(baseline,a,b,numpts)*10^14;
   Area4(counter) = Integrationdata(filename,xrange,yrange) - baselineArea4;
   counter = counter + 1;
end
Area4;
high = max(Area4)
lower = min(Area4)

%% Peek 5
clear; clc; 
xdata5 = ('C1522:C1540');
ydata5 = ('K1522:K1540');
numpts = 100000;
filename = ('ngc1275');

[predicted5] = Integrationdata(filename,xdata4,ydata5);
predicted5 = abs(predicted5);
baseline = @(x) (-0.0238*x.^3+0.409*x.^2-2.4404*x+6.0068);
xpts = xlsread(filename,xdata5);
predicted5 = predicted5 - SimpsonFunction(baseline,xpts(length(xpts))/10^14,xpts(1)/10^14,numpts)*10^14
counter = 1;

for n = 1517:1527
   lower = n;
   upper = n+21;
   lower = int2str(lower);
   upper = int2str(upper);
   xrange = strcat('C',lower,':','C',upper);
   yrange = strcat('B',lower,':','B',upper);
   xdata = xlsread(filename,xrange);
   a = xdata(length(xdata)) /10^14;
   b = xdata(1) /10^14;
   x = linspace(a,b,10000);
   baselineArea5 = SimpsonFunction(baseline,a,b,numpts)*10^14;
   Area5(counter) = Integrationdata(filename,xrange,yrange) - baselineArea5;
   counter = counter + 1;
end
Area5;
high = max(Area5)
lower = min(Area5)






