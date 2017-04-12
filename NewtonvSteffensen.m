clear; clc;

f = @(x) x^2 -2 ;
df = @(x) 2*x;

[root error] = SteffensenFunction(f,-1)
[root1 error1] = NewtonsMethodError(f,df,-1)

loglog(error(1:end -1), error(2:end), 'b--')
xlabel('Old Iterate')
ylabel('New Iterate')
title('loglog error plot')
hold on
loglog(error1(1:end -1), error1(2:end), 'r--')
legend('Steffensen','Newtons')

