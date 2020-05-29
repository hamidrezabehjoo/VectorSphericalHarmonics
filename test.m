clear all; close all

n = 4;
m = 1;
% theta = linspace(0,pi,1001);
% thetad = theta * (180/pi);
% 
% phi = linspace(-pi,pi,2001);
% phid = phi * (180/pi);
% 
% [THETA,PHI] = meshgrid(theta,phi);


%  y = diffLegendre(n,m,theta);
% % 
% plot(theta,y)
% %  
% hold on
% % plot(theta,(sqrt(105)/16)* (3*sin(3*theta)-1*sin(1*theta)))
% plot(theta,(-3*sqrt(70)/32)* (cos(3*theta)-cos(theta)))

     f = mLegendre(n,m,theta)' * exp(m*phi);
   
%imagesc(theta,phi,abs(f))
 
%surf(abs(f))

% patternCustom((abs(f))',thetad,phid,'CoordinateSystem','rectangular');
% figure
%patternCustom((abs(f))',thetad,phid,'CoordinateSystem','polar');

% x = 2 * sin(theta)' * cos(phi);
% y = 2 * sin(theta)' * sin(phi);
% % z = 2 * cos(theta)' * ones(1,length(phi));
% z = f;
% % plot3(x,y,z)
% surf(x,y,z)

theta = randn(100,1);
y = Legendre(n,m,theta);

