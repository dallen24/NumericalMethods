clear; clc
filename = 'LeastSquaresSampleDataSet.xlsx';
xrange = ' S2:S12';
yrange = 'T2:T12';

xdata = xlsread(filename,xrange);
ydata = xlsread(filename,yrange);

order = 3
A = ones(length(xdata),order + 1);
for n = 1:order+1
    A(:,n) = xdata.^(n-1);
end

ATA = A'*A;
b = A'*ydata;

[L, U] = MyLU(ATA)
[y] = Lsolve(L,b)
[x] = Usolve(U,y) 