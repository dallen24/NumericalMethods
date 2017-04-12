clear; clc; clf; close all;
% need to do:
    % Define BC
BCLeft = 0;
BCRight = 0;
fIC = @(x) sin(x);

    % Define the domains: time and space 
tmin = 0;
tmax = .1;
xmin = 0;
xmax = 1;
num_pts_t = 1000;
num_pts_space = 20;
t = linspace(tmin,tmax,num_pts_t);
deltat = t(2) - t(1);
x = linspace(xmin,xmax,num_pts_space);
deltax = x(2) - x(1);

    % Diffusion coefficent
alpha = 5;

    % Set up space for U
U = zeros(length(t),length(x));

    % set up the IC and BC
U(1,:) = fIC(x);
U(:,1) = BCLeft;
U(2,:) = fIC(x);
U(:,end) = BCRight;

    % need discretizations of the derivatives
    
    % loop over time to build soluiton
K = alpha^2*deltat/deltax^2;

for n = 2:length(t)-1
   newU = U(n,3:end) -2*U(n,2:end-1) +U(n,1:end-2); 
   U(n+1,2:end-1) = 2*U(n,2:end-1) - U(n-1,2:end-1)+ K*newU;
   plot(x,U(n+1,:),'m')
   axis([xmin,xmax,-max(fIC(x)),max(fIC(x))])
   pause(.1)
end