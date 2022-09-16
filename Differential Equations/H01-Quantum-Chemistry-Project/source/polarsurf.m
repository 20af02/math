% polarsurf.m
% function[] = polarsurf(r,theta,u_r_th)
% r = R x 1 column vector of radii
% theta = 1 x THETA row vector of angles
% u_r_th = R x THETA array of values u(r,theta)
  function[] = polarsurf(r,theta,u_r_th);

  R = length(r);
  TH = length(theta);

  x = zeros(R,TH);
  y = zeros(R,TH);

  for k1 = 1:R
    for k2 = 1:TH
      x(k1,k2) = r(k1)*cos(theta(k2));
      y(k1,k2) = r(k1)*sin(theta(k2));
    end
  end
% grayscale color map for b/w printing
%  colormap('gray');
  colormap('cool');
  surf(x,y,u_r_th);
% uses grids on surface (normally obscures colormap)
%  shading faceted;
  %shading interp;
