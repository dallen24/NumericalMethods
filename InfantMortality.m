clear; clc

xdata = xlsread('InfantMortalityData.xlsx','Sheet2','A2:A27');
ydata = xlsread('InfantMortalityData.xlsx','Sheet2','B2:B27');
xdata;
ydata;


xsmall = 2;
xlarge = 27;
[x, dy] = firstderivativedata('InfantMortalityData' , '2', '27', '2', '27');
length(x);
length(dy);

[xa, dya] = secondderivativedata('InfantMortalityData' , '2', '27', '2', '27');
length(xa)
length(dya)

figure
subplot(1,2,1)
plot(xdata,ydata)
xlabel('year')
ylabel('Infant Mortality per 1000')
subplot(1,2,2)
plot(x(2:end - 1),dy)
xlabel('year')
ylabel('Change in Infant Mortality per 1000')

figure
plot(xa(2:end-1),dya)


