clear; clc;

A = [1,2,3;
    4,5,6;
    7,8,0];
b = [1;0;2];

[lower, upper] = MyLU(A)
error_in_LU = norm(A-lower*upper)


y = Lsolve(lower,b)
x = Usolve(upper,y)

error_in_solve = norm(A*x - b)
abs_error = norm(A\b - x)


%%
B = rand(2)
n = 1;
for theta = 0: .001: 2*pi
    x = [cos(theta);sin(theta)];
    b = B * x;
    thearray(n) = norm(b);
    n = n + 1;
end

max(thearray)
norm(B)

%%
clear; clc; clf;
counter = 1;
for n = 1:1:100
    C = rand(n,n);
    b = rand(n,1);
    [lower,upper] = MyLU(C);
    y = Lsolve(lower,b);
    x = Usolve(upper,y);
    size(n) = n;
    error(n) = abs(norm(C\b - x));
end

loglog(size,error,'b*')

    
