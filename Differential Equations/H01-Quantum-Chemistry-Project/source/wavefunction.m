% wavefunction.m
% 05.12.21
% Ammaar Firozi
  clear; close all; clc;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
z = 0:0.01:14;

%Calculating 1st 3 bessel functions of the first kind
j=zeros(3,1401);
for i=0:3
    j(i+1,:)=besselj(i,z);
end

h=plot(z,j)
xData= get(h,'XData')
grid on
legend('J0','J1','J2','J3')
title('Bessel Function of the first kind')
xlabel('z')
ylabel('Jn')