clear; clc
for n = 3:1:100
    
A = rand(n,n);

x = rand(n,1);
v = x/norm(x);

for k = 2:100
    vtemp = A*v;
    lambda = dot(vtemp,v);
    v = vtemp/norm(vtemp);
end
semilogy(n,norm(A*v-lambda*v),'mp')
hold on 
grid on

end

first = A*v;
second = lambda*v;
norm(first-second)

%%
clear; clc
n = 20;
A = rand(n,n);

x = rand(n,1);
v = x/norm(x);

for k = 2:100
    vtemp = A*v;
    lambda = dot(vtemp,v);
    v = vtemp/norm(vtemp);
end

lambda
[vec, val] = eig(A);
DominantEV = max(max(val))