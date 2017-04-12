function [ L, U] = MyLU( A )

n = size(A,1);
L = eye(n,n);
U = zeros(n,n);

for j = 1:n-1
   for i = j+1:n
       mult = A(i,j)/A(j,j);
       A(i,j+1:n) = A(i,j+1:n) - mult*A(j,j+1:n);
       
       L(i,j) = mult;
       A(i,j) = mult;
   end
end
L;
U = A - L + eye(n,n);
end

