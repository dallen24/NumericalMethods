clc; 

S = who;
% how to visualize
digit = train0(1,:);
digitImage = reshape(digit,28,28);
image(rot90(flipud(digitImage),-1)),
colormap(gray(256)), axis square tight off;

%% Problem 1 print out of the digits
 format compact
T = zeros(10,784);

T(1,:) = mean(train0);
T(2,:) = mean(train1);
T(3,:) = mean(train2);
T(4,:) = mean(train3);
T(5,:) = mean(train4);
T(6,:) = mean(train5);
T(7,:) = mean(train6);
T(8,:) = mean(train7);
T(9,:) = mean(train8);
T(10,:) = mean(train9);

figure
for k = 1:10
    subplot(2,5,k);
    digitImage = reshape(T(k,:),28,28);
    image(rot90(flipud(digitImage),-1)),
    colormap(gray(256)), axis square tight off;
end
 
%% prob 1 5.2.6
clc; format compact
T = zeros(10,784);

T(1,:) = mean(train0);
T(2,:) = mean(train1);
T(3,:) = mean(train2);
T(4,:) = mean(train3);
T(5,:) = mean(train4);
T(6,:) = mean(train5);
T(7,:) = mean(train6);
T(8,:) = mean(train7);
T(9,:) = mean(train8);
T(10,:) = mean(train9);

d0 = double(test0(1,:));
d1 = double(test1(1,:));
d2 = double(test2(1,:));
d3 = double(test3(1,:));
d4 = double(test4(1,:));
d5 = double(test5(1,:));
d6 = double(test6(1,:));
d7 = double(test7(1,:));
d8 = double(test8(1,:));
d9 = double(test9(1,:));

alltest = [d0;d1;d2;d3;d4;d5;d6;d7;d8;d9];

%%%%%%%%% first approach %%%%%%%%%%
for i = 1:length(test0)
    d = double(test0(i,:));
    for j = 1:10
        firstT0(j,i) = norm(T(j,:) - d) ;
    end
end
counter = 0;
for m = 1:length(test0)
    if firstT0(1,m) == min(min(firstT0(:,m)))
        counter = counter + 1;
    end
end
firstprop = counter/length(test0)


for i = 1:length(test1)
    d = double(test1(i,:));
    for j = 1:10
        firstT1(j,i) = norm(T(j,:) - d) ;
    end
end
counter = 0;
for m = 1:length(test1)
    if firstT1(2,m) == min(min(firstT1(:,m)))
        counter = counter + 1;
    end
end
secondprop = counter/length(test1)


for i = 1:length(test2)
    d = double(test2(i,:));
    for j = 1:10
        firstT2(j,i) = norm(T(j,:) - d) ;
    end
end
counter = 0;
for m = 1:length(test2)
    if firstT2(3,m) == min(min(firstT2(:,m)))
        counter = counter + 1;
    end
end
secondprop = counter/length(test2)

for i = 1:length(test3)
    d = double(test3(i,:));
    for j = 1:10
        firstT3(j,i) = norm(T(j,:) - d) ;
    end
end
counter = 0;
for m = 1:length(test3)
    if firstT3(4,m) == min(min(firstT3(:,m)))
        counter = counter + 1;
    end
end
thirdprop = counter/length(test3)


for i = 1:length(test4)
    d = double(test4(i,:));
    for j = 1:10
        firstT4(j,i) = norm(T(j,:) - d) ;
    end
end
counter = 0;
for m = 1:length(test0)
    if firstT4(5,m) == min(min(firstT4(:,m)))
        counter = counter + 1;
    end
end
fourthprop = counter/length(test4)

for i = 1:length(test5)
    d = double(test5(i,:));
    for j = 1:10
        firstT5(j,i) = norm(T(j,:) - d) ;
    end
end
counter = 0;
for m = 1:length(test5)
    if firstT5(6,m) == min(min(firstT5(:,m)))
        counter = counter + 1;
    end
end
fifthprop = counter/length(test5)

for i = 1:length(test6)
    d = double(test6(i,:));
    for j = 1:10
        firstT6(j,i) = norm(T(j,:) - d) ;
    end
end
counter = 0;
for m = 1:length(test6)
    if firstT6(7,m) == min(min(firstT6(:,m)))
        counter = counter + 1;
    end
end
sixthprop = counter/length(test6)


for i = 1:length(test7)
    d = double(test7(i,:));
    for j = 1:10
        firstT7(j,i) = norm(T(j,:) - d) ;
    end
end
counter = 0;
for m = 1:length(test7)
    if firstT7(8,m) == min(min(firstT7(:,m)))
        counter = counter + 1;
    end
end
seventhprop = counter/length(test7)

for i = 1:length(test8)
    d = double(test8(i,:));
    for j = 1:10
        firstT8(j,i) = norm(T(j,:) - d) ;
    end
end
counter = 0;
for m = 1:length(test8)
    if firstT8(9,m) == min(min(firstT8(:,m)))
        counter = counter + 1;
    end
end
eigthprop = counter/length(test8)

for i = 1:length(test9)
    d = double(test9(i,:));
    for j = 1:10
        firstT9(j,i) = norm(T(j,:) - d) ;
    end
end
counter = 0;
for m = 1:length(test5)
    if firstT9(10,m) == min(min(firstT9(:,m)))
        counter = counter + 1;
    end
end
ninthprop = counter/length(test9)










%%%%%%%%second approach %%%%%%%%%%%%%%%%%
secondT0 = zeros(10,980);

for i = 1:length(test0)
    d = double(test0(i,:));
    for j = 1:10
        secondT0(j,i) = norm(d- (dot(d,T(j,:))/dot(T(j,:),T(j,:)))*T(j,:));
    end
end
counter = 1;
for m = 1: length(test0)
       if secondT0(1,m) == min(min(secondT0(:,m)))
            counter = counter + 1;
       end
end
propT0 = counter/length(test0)

% second approach image 1
secondT1 = zeros(10,1135);
for i = 1:length(test1)
    d = double(test1(i,:));
    for j = 1:10
        secondT1(j,i) = norm(d- (dot(d,T(j,:))/dot(T(j,:),T(j,:)))*T(j,:));
    end
end
counter = 1;
for m = 1: length(secondT1)
        if secondT1(2,m) == min(min(secondT1(:,m)))
            counter = counter + 1;
        end
end
propT1 = counter/length(test1)

% second approach image 2
for i = 1:length(test2)
    d = double(test2(i,:));
    for j = 1:10
        secondT2(j,i) = norm(d- (dot(d,T(j,:))/dot(T(j,:),T(j,:)))*T(j,:));
    end
end
counter = 1;
for m = 1: length(test2)
    if secondT2(3,m) == min(min(secondT2(:,m)))
        counter = counter + 1;
    end
end
propT2 = counter/length(test2)

% second approach image 3
for i = 1:length(test3)
    d = double(test3(i,:));
    for j = 1:10
        secondT3(j,i) = norm(d- (dot(d,T(j,:))/dot(T(j,:),T(j,:)))*T(j,:));
    end
end
counter = 1;
for m = 1: length(test3)
    if secondT3(4,m) == min(min(secondT3(:,m)))
        counter = counter + 1;
    end
end
propT3 = counter/length(test3)

% second approach image 4
for i = 1:length(test4)
    d = double(test4(i,:));
    for j = 1:10
        secondT4(j,i) = norm(d- (dot(d,T(j,:))/dot(T(j,:),T(j,:)))*T(j,:));
    end
end
counter = 1;
for m = 1: length(test4)
    if secondT4(5,m) == min(min(secondT4(:,m)))
        counter = counter + 1;
    end
end
propT4 = counter/length(test4)

% second approach image 5
for i = 1:length(test5)
    d = double(test5(i,:));
    for j = 1:10
        secondT5(j,i) = norm(d- (dot(d,T(j,:))/dot(T(j,:),T(j,:)))*T(j,:));
    end
end
counter = 1;
for m = 1 : length(secondT5)
    if secondT5(6,m) == min(min(secondT5(:,m)))
         counter = counter + 1;
    end
end
propT5 = counter/length(test5)

% second approach image 6
for i = 1:length(test6)
    d = double(test6(i,:));
    for j = 1:10
        secondT6(j,i) = norm(d- (dot(d,T(j,:))/dot(T(j,:),T(j,:)))*T(j,:));
    end
end
counter = 1;
for m = 1: length(test6)
        if secondT6(7,m) == min(min(secondT6(:,m)))
            counter = counter + 1;
    end
end
propT6 = counter/length(test6)

% second approach image 7
for i = 1:length(test7)
    d = double(test7(i,:));
    for j = 1:10
        secondT7(j,i) = norm(d- (dot(d,T(j,:))/dot(T(j,:),T(j,:)))*T(j,:));
    end
end
counter = 1;
for m = 1: length(test7)
        if secondT7(8,m) == min(min(secondT7(:,m)))
            counter = counter + 1;
    end
end
propT7 = counter/length(test7)

% second approach image 8
for i = 1:length(test8)
    d = double(test8(i,:));
    for j = 1:10
        secondT8(j,i) = norm(d- (dot(d,T(j,:))/dot(T(j,:),T(j,:)))*T(j,:));
    end
end
counter = 1;
for m = 1: length(test8)
        if secondT8(9,m) == min(min(secondT8(:,m)))
            counter = counter + 1;
    end
end
propT8 = counter/length(test8)

% second approach image 9
for i = 1:length(test9)
    d = double(test9(i,:));
    for j = 1:10
        secondT9(j,i) = norm(d- (dot(d,T(j,:))/dot(T(j,:),T(j,:)))*T(j,:));
    end
end
counter = 1;
for m = 1: length(test9)
        if secondT9(10,m) == min(min(secondT9(:,m)))
            counter = counter + 1;
    end
end
propT9 = counter/length(test9)

%% Problem 2
clear; clc

counterLU = 0;
counterQR = 0;
for n = 1:10000
    numpts = 50;
    t = linspace(0,1,numpts);
    ys = cos(4*t) + 0.1*randn(size(t)); 
    order = 4;
    A = ones(length(t),order + 1);
    for n = 1:order+1
        A(:,n) = t.^(n-1);
    end
    ATA = A' * A;
    b = A' * ys';
    [L,U] = MyLU(ATA);
    [y] = Lsolve(L,b);
    [x1] = Usolve(U,y) ;
    [Q,R] = myQR(A);
    %R*x = Q'b
    newb = Q'*ys';
    [x2] = Usolve(R,newb) ;
    approxLU = x1(1) + x1(2).*t + x1(3)*t.^2 +x1(4)*t.^3 + x1(5)*t.^4;
    approxQR = x2(1) + x2(2).*t + x2(3)*t.^2 +x2(4)*t.^3 + x2(5)*t.^4;
    f = cos(4*t);
    differenceLU = sum((approxLU - f).^2);
    differenceQR = sum((approxQR - f).^2);

    if differenceLU < differenceQR
        counterLU = counterLU + 1;
    else
       counterQR = counterQR + 1; 
    end
        
    
end
 counterLU
 counterQR


%% 5.4.7 second eig deflation method
clear; clc; format short
n = 4;
A = rand(n,n);

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

% verify correct answer
v2
lambda2
[vec, val] = eigs(B);
actualvec2 = vec(:,3)
actualval2 = val(3,3)



%% check to see if MyPower2 works
clear; clc;
n = 4;
A = rand(n,n);

[v2, lambda2] = MyPower2(A);
eig(A'*A)
lambda2

[v, lam] = MyPower(A);
eig(A);



