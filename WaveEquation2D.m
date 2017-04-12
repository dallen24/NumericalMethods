%% 2D heat

clear; clc; clf; close all;
% need to do:
    % Define BC


    % Define the domains: time and space 
tmin = 0;
tmax = .1;
xmin = 0;
xmax = 1;
ymin = 0;
ymax = 1;
num_pts_t = 1000;
num_pts_space = 50;
t = linspace(tmin,tmax,num_pts_t);
deltat = t(2) - t(1);
x = linspace(xmin,xmax,num_pts_space);
deltax = x(2) - x(1);
y = linspace(ymin,ymax,num_pts_space);
deltay = y(2) - y(1);

    % Diffusion coefficent


    % Set up space for U
[X,Y] = meshgrid(x,y);
IC = sin(2.*pi.*(X-.5)).*sin(2.*pi.*(Y-.3));
surf(X,Y,IC)

    % set up the IC and BC
U = zeros(length(x),length(y),length(t));
U(:,:,1) = IC;
U(:,:,2) = IC;
U(1,:,:) = 0;
U(end,:,:) = 0;
U(:,1,:) = 0;
U(:,end,:) = 0;


    
    % loop over time to build soluiton
D = 100;
K = D^2*deltat^2/deltax^2;

    for n = 2:length(t)-1 
         U(2:end-1,2:end-1,n+1) =  K * (U(3:end,2:end-1,n) + ...
             U(2:end-1,3:end,n) - ...
             4*U(2:end-1,2:end - 1,n) + ...
             U(1:end-2,2:end-1,n) + ...
             U(2:end-1,1:end - 2,n)) + ...
             2*U(2:end-1,2:end-1,n) - ...
             U(2:end-1,2:end-1,n-1);

         surf(X,Y,U(:,:,n+1));
         contour(X,Y,U(:,:,n+1));
         axis([0,1,0,1,-2,2])
         drawnow
    end