clear; clc;

f =@(x) sin(x)- x.*sin(x)

a = 0;
b = 15;
number_of_points = 100;
x = linspace(a,b,number_of_points);
h = x(2) - x(1); 
y = f(x);

plot(x,y, 'b--')
hold on
dy = (1/h) * (y(2:end) -y(1:end-1));
plot(x(1:end-1),dy,'r--')



xdata = xlsread('DummyData.xlsx','A2:A152');
ydata = xlsread('DummyData.xlsx','B2:B152');