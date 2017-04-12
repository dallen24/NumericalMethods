clear; clc;

%A = [4,11,14;
   % 8, 7, -2];
A= rand(500,300);
[m,n] = size(A);
r = rank(A);
sigma = zeros(m,n);
U = zeros(m,m);


[vec, val] = eig(A'*A, 'vector');
val = real(val);
val = abs(val);
[val,indices] = sort(val,'descend');
V = vec(:,indices);
singularvalues = sqrt(val(1:end));
       
B = zeros(size(sigma));
for j = 1:r
    sigma(j,j) = singularvalues(j);
    B(j,j) = 1/singularvalues(j);
end

U = A*V*B';

check = norm(A - U*sigma*V')

%%
clear; clc
A = rand(10,20);
svd = svd(A)
qr= qr(A)
lu = lu(A)