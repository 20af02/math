% bessel.m
% 05.12.21
% Ammaar Firozi (Lines 7-20 adapted from Prof. Brody Johnson)
  clear; close all; clc;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% range for radius
rmin = 0;
rmax = 2;
dr = 0.05;
r = [rmin:dr:rmax];

% range for theta
thmin = 0;
thmax = 2*pi;
dth = 2*pi/36;
theta = [thmin:dth:thmax];

% create matrices for r and theta
[TH,R] = meshgrid(theta,r);
 
% 1 1
%J1.1
    z1 = besselj(1,3.83*R).*cos(theta);
    figure;
    polarsurf(r,theta,z1);
    axis('equal')
%J1.2
    z1 = besselj(1,7.01*R).*cos(theta);
    figure;
    polarsurf(r,theta,z1);
    axis('equal')
%J1.3
    z1 = besselj(1,10.17*R).*cos(theta);
    figure;
    polarsurf(r,theta,z1);
    axis('equal')
    

%J2.1
z2 = besselj(2,5.14*R).*cos(2*theta);
figure;
polarsurf(r,theta,z2);
axis('equal')

%J2.2
z2 = besselj(2,8.41*R).*cos(2*theta);
figure;
polarsurf(r,theta,z2);
axis('equal')

%J2.3
z2 = besselj(2,11.62*R).*cos(2*theta);
figure;
polarsurf(r,theta,z2);
axis('equal')


%J3.1
z3 = besselj(3,6.38*R).*cos(3*theta);
figure;
polarsurf(r,theta,z3);
axis('equal')

%J3.2
z3 = besselj(3,9.76*R).*cos(3*theta);
figure;
polarsurf(r,theta,z3);
axis('equal')

%J3.3
z3 = besselj(3,13.01*R).*cos(3*theta);
figure;
polarsurf(r,theta,z3);
axis('equal')