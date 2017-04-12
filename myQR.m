function [ Q , R ] = myQR( A )

[m,n] = size(A);

Q = zeros(m,n);
R = zeros(n,n);

for j = 1: n
    temp = A(:,j);
    for i = 1:j-1
        Q(:,j) = A(:,j)/norm(A(:,j));
        R(i,j) = dot(A(:,j),Q(:,i));
        temp = temp - R(i,j)*Q(:,i);
    end
    Q(:,j) = temp/norm(temp);
    R(j,j) = dot(A(:,j),Q(:,j));
end








