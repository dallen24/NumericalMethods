function [ area ] = Trappazoid( f, a, b, numpts )

values = linspace(a,b,numpts);
h = values(2) - values(1);
steps = .5*(f(values(2:end)) + f(values(1:end-1)))*(h);
area = sum(steps(1:end));


end


