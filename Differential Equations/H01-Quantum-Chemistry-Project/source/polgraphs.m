% polgraphs.m
% examples of polar coordinate surface plots
  clear; close all; 

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
  
% example 1 - create graph of sphere
% z^2 + r^2 = 4 ---> z = sqrt(4-r^2) 
  z1 = sqrt(4-R.^2);
  figure;
  polarsurf(r,theta,z1);
  axis('equal')
  
% example 2 - Bessel function
  z2 = besselj(0,3*R).*cos(2*theta);
  figure;
  polarsurf(r,theta,z2);
  axis('equal')
  
% example 3 - Bessel function
  z2 = besselj(1,4*R);
  figure;
  polarsurf(r,theta,z2);
  axis('equal')
  shading('interp')  %removes grid
  