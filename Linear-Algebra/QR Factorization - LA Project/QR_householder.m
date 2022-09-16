%% QR Factorization Script
%  Ma-UY 3044 B | Linear Algebra - Ammaar Firozi
%
%  Information
%  ------------
% 
%  This file contains code that computes the Householder QR factorization of a given
%  matrix. The matrix is read from the file inputMatrix.txt
%

%% Initialization
clear ; close all; clc

fprintf('Loading and Data ...\n')
% Load from inputMatrix.mat
A = load('inputMatrix.txt');
disp('A = ');
disp(A);

[Q, R] = qr_factorization_householder(A);

disp('A = QR = ');
disp(A);
disp('Q= ');
disp(Q);
disp('R= ');
disp(R);
disp('Q*R =');
disp(Q*R);

function [Q, R] = qr_factorization_householder(A)
    [m, n]= size(A);
    Q=eye(m);
    R=A;
    for i=1:n
        %Compute v vector
        x = R(i:end, i);
        e1 = zeros(size(x));
        e1(1)=1;
        v=x-norm(x)*e1;
        
        H=eye(m);
        
        %Compute Householder matrix
        I=eye(length(v));
        H(i:end, i:end)=I-2*(v*v')/(v'*v);
        
        %Update Q and R
        R=H*R;
        Q=Q*H;
    end
end







