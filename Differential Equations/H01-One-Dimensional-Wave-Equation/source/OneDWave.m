% OneDWave.m
% 05.05.21
% Ammaar Firozi
  clear; close all; clc;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
syms t n k
Time = 0;
nFrames = 15;
fourier_wave = @(t,x, k)symsum(((2*sin(n*pi))/(pi-(pi*n^2)))*sin(n*pi*t)*cos(2*n*pi*x),n,1,k);


%ezplot(fourier_wave(t,1),0,1);
%title('u(x,t)'), xlabel('x'), ylabel('u(x,t)');

h = figure;
axis tight manual

for i = 1:0.5:nFrames
    x = 0:0.1:1;
    y = fourier_wave(x,i, 1);
    plot(x,y)
    drawnow
    
    frame = getframe(h);
    im = frame2im(frame);
    [img,cmap] = rgb2ind(im,256);
    if i == 1
        imwrite(img,cmap,'animation.gif', 'gif', 'Loopcount' , inf);
    else
        imwrite(img,cmap,'animation.gif', 'gif', 'WriteMode', 'append');
    end
end