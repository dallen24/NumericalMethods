clear; clc; format long
f = @(x) cos(x.^2);
a = 0;
b = 1;
n = 1;
actual = quad(f,a,b);

for numpts = 2 : 1000
    error(n) = abs(actual - SimpsonFunction(f,a,b,numpts));
    error2(n) = abs(actual - TrappazoidFunction(f,a,b,numpts));
    
    steps = linspace(a,b,numpts);
    hvalue(n) = steps(2) - steps(1);
    n = n + 1;
end
loglog(hvalue(1:end),error(1:end), 'b--');
hold on 
loglog(hvalue(1:end),error2(1:end), 'r--');
legend('Simpsons Method', 'Trappazoid Method')

%%
f = @(x) exp(-x.^2);
a = -2;
b = 2;
n = 1;
actual = quad(f,a,b);

for numpts = 2 : 500
    error(n) = abs(actual - SimpsonFunction(f,a,b,numpts));
    error2(n) = abs(actual - TrappazoidFunction(f,a,b,numpts));
    
    steps = linspace(a,b,numpts);
    hvalue(n) = steps(2) - steps(1);
    n = n + 1;
end

loglog(hvalue(1:end),error(1:end), 'b--');
hold on 
loglog(hvalue(1:end),error2(1:end), 'r--');
legend('Simpsons Method', 'Trappazoid Method')

%% Integration data
filename = 'TuberculosisIntegration.xls';
x = 'A2:A15';
xpoints = xlsread(filename,x)
y = 'B2:B15';
ypoints = xlsread(filename,y)

plot(xpoints,ypoints)
xlabel('Year')
ylabel('Incidence of tuberculosis (per 100,000 population per year)')
area = Integrationdata(filename,x,y);


area








