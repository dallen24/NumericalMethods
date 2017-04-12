clear; clc


A = [1, 1, 0;
    1, 0, 1;
    0 , 1, 1];

Q(:,1) = A(:,1)/norm(A(:,1));
Q(:,2) = A(:,2) - dot(A(:,2),Q(:,1))*Q(:,1);
Q(:,2) = Q(:,2)/norm(Q(:,2));
Q(:,3) = A(:,3) - dot(A(:,3),Q(:,1))*Q(:,1) - dot(A(:,3),Q(:,2))*Q(:,2);
Q(:,3) = Q(:,3)/norm(Q(:,3));

for n = 1:3
    for m = n:3
        R(n,m) = dot(Q(:,n),A(:,m));
    end
end
R
Q
B = Q*R

C = Q'*Q

%%
clear; clc
A = [1, 1, 0 ;
    1, 0, 1 ;
    0 , 1, 1 ];
[Q,R] = myQR(A)
