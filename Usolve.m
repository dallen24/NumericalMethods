function [ x ] = Usolve( U, y )

n = length(y);
for i = 1:n
    x(n+1-i) = y(n+1-i)/U(n+1-i,n+1-i);
    for j = 1:i-1
        x(n+1-i) =x(n+1-i) - (U(n+1-i,n+1-j)*x(n+1-j))/U(n+1-i,n+1-i);
    end
end
x = x';
end