function [ v2, lambda2 ] = MyPower2( A )
 
B = A'*A;
x = rand(length(A),1);
v = x/norm(x);
for k = 2:100
    vtemp = B*v;
    lambda1 = dot(vtemp,v);
    v = vtemp/norm(vtemp);
end

newx = x - dot(x,v)*v;
v2 = newx/norm(newx);
for k = 2:1000
    v2temp =B*v2;
        if mod(k,4) == 0 
             v2temp = v2temp - dot(v2temp,v)*v;
        end
    
    lambda2 = dot(v2temp,v2);
    v2 = v2temp/norm(v2temp);

end
v2;
lambda2;

end

