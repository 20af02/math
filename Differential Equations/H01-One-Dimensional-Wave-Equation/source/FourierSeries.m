% FourierSeries.m
% 05.05.21
% Ammaar Firozi
  clear; close all; clc;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
syms t n k

A_fourierseries = @(t,k) symsum(((-4*n*sin(2*pi*n))/(pi*(4*n^2-49)))*cos(2*pi*n*t)+ ...
    ((8*n*cos(pi*n)^2)/(pi*(4*n^2-49)))* sin(2*pi*n*t), n, 1 ,k);
A_norm = @(t) cos(7*pi*t)
B_fourierseries = @(t,k) symsum((((2*sin(pi*n))*(pi*cos(pi*n)-sin(pi*n)))/(pi*n)^2)*cos(2*pi*n*t)+ ...
    ((2*cos(pi*n)*(sin(pi*n)-pi*n*cos(pi*n)))/(pi*n)^2)*sin(2*pi*n*t) , n, 1 ,k);
B_norm = @(t) 2*t-1;
C_fourierseries = @(t,k) symsum(((2*sin(pi*n)-sin(2*pi*n))/(pi*n))*cos(pi*n*t)+...
    ((1-2*cos(pi*n)+cos(2*pi*n))/(pi*n))*sin(pi*n*t) , n, 1, k);
C_norm = @(t) ((heaviside(t)-2*heaviside(t-1)));

ezplot(A_fourierseries(t,15),0,1);
title('Fourier Series f1(x)'), xlabel('t'), ylabel('f1(x)');
pause(10);
ezplot(A_norm(t),0,1);
title('f1(x)'), xlabel('t'), ylabel('f1(x)');

pause(10);

ezplot(B_fourierseries(t,15),0,1);
title('Fourier Series f2(x)'), xlabel('t'), ylabel('f2(x)');
pause(10);
ezplot(B_norm(t),0,1);
title('f2(x)'), xlabel('t'), ylabel('f2(x)');

pause(10);

ezplot(C_fourierseries(t,15),0,2);
title('Fourier Series f3(x)'), xlabel('t'), ylabel('f3(x)');
pause(10);
ezplot(C_norm(t),0,2);
title('f3(x)'), xlabel('t'), ylabel('f2(x)');



