clear; clc; clf; close all;
% need to do:
    % Define BC
BCLeft = 0;
BCRight = 0;
fIC = @(x) sin(2*pi*x);

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
D = 1;

    % Set up space for U
U = zeros(length(t),length(x));

    % set up the IC and BC
U(1,:) = fIC(x);
U(:,1) = BCLeft;
U(:,end) = BCRight;

    % need discretizations of the derivatives
    
    % loop over time to build soluiton
K = D*deltat/deltax^2;
for n = 1:length(t)-1
   newU = U(n,3:end) -2*U(n,2:end-1) +U(n,1:end-2); 
   U(n+1,2:end-1) = U(n,2:end-1) + K*newU;
   plot(x,U(n+1,:),'m')
   axis([xmin,xmax,min(fIC(x)),max(fIC(x))])
   pause(.1)
end

%% changing end boundary... insulation
clear; clc; clf; close all;
% need to do:
    % Define BC
BCLeft = 1;
BCRight = 1;
fIC = @(x) cos(2*pi*x)


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
D = 5;

    % Set up space for U
U = zeros(length(t),length(x));

    % set up the IC and BC
U(1,:) = fIC(x);
U(:,1) = BCLeft;
U(:,end) = BCRight;

    % need discretizations of the derivatives
    
    % loop over time to build soluiton
K = D*deltat/deltax^2;
for n = 1:length(t)-1
   newU = U(n,3:end) -2*U(n,2:end-1) +U(n,1:end-2); 
   U(n+1,2:end-1) = U(n,2:end-1) + K*newU; % heat equation
   U(n+1,end) = U(n + 1,end - 1); % insulation
   plot(x,U(n+1,:),'m')
   axis([xmin,xmax,min(fIC(x)),max(fIC(x))])
   pause(.1)
end

%%

clear; clc; clf; close all;
% need to do:
    % Define BC
BCLeft = 0;
BCRight = @(t) sin(15*pi*t);
fIC = @(x) sin(2*pi*x);

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
D = 1;

    % Set up space for U
U = zeros(length(t),length(x));

    % set up the IC and BC
U(1,:) = fIC(x);
U(:,1) = BCLeft;
U(:,end) = BCRight(t);

    % need discretizations of the derivatives
    
    % loop over time to build soluiton
K = D*deltat/deltax^2;
for n = 1:length(t)-1
   newU = U(n,3:end) -2*U(n,2:end-1) +U(n,1:end-2); 
   U(n+1,2:end-1) = U(n,2:end-1) + K*newU;
   plot(x,U(n+1,:),'m')
   axis([xmin,xmax,min(fIC(x)),max(fIC(x))])
   pause(.1)
end



%% 2D heat

clear; clc; clf; close all;
% need to do:
    % Define BC
BCLeft = 0;
BCRight = 0;
BCLower = 0;
BCUpper = 0;

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
D = 1;

    % Set up space for U
[x,y] = meshgrid(x,y);
IC = 2000*(x-.5).*(y-.5).*exp(-((x-.5).^2+((y-.50).^2))/.02);
surf(x,y,IC)

    % set up the IC and BC
U = zeros(length(x),length(y),length(t));
U(:,:,1) = IC;

    
    % loop over time to build soluiton
D = .1;
K = D*deltat/deltax^2;
    for n = 1:length(t)-1 
         U(2:end-1,2:end-1,n+1) = ...
             U(2:end-1,2:end-1,n) + ...
        K * (U(3:end,2:end-1,n) + ...
             U(2:end-1,3:end,n) - ...
             4*U(2:end-1,2:end - 1,n) + ...
             U(1:end-2,2:end-1,n) + ...
             U(2:end-1,1:end - 2,n));
         surf(x,y,U(:,:,n+1));
         axis([0,1,0,1,-8,8])
         drawnow
    end
