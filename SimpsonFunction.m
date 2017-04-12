function [ area ] = SimpsonFunction( f, a, b, numpts )

values = linspace(a,b,numpts);
h = values(2) - values(1);
y = f(values(1:end-1)) + 4*f((values(1:end-1)+values(2:end))/2) + f(values(2:end));
steps = (1/6)*y*h;
area = sum(steps(1:end));

end

