function [ v, lambda] = MyPower( A )

x = rand(length(A),1);
v = x/norm(x);
for k = 2:100
    vtemp = A*v;
    lambda = dot(vtemp,v);
    v = vtemp/norm(vtemp);
end

lambda;
v;

end

