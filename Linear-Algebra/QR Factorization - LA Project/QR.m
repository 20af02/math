%% QR Factorization Script
%  Ma-UY 3044 B | Linear Algebra - Ammaar Firozi
%
%  Information
%  ------------
% 
%  This file contains code that computes the QR factorization of a given
%  matrix. The matrix is read from the file inputMatrix.txt
%

%% Initialization
clear ; close all; clc




fprintf('Loading and Data ...\n')
% Load from inputMatrix.mat
A = load('inputMatrix.txt');
disp('A = ');
disp(A);

Q = get_Q(A);
R = get_R(A,Q);

disp('A = QR = ');
disp(A);
disp('Q= ');
disp(Q);
disp('R= ');
disp(R);
disp('Q*R =');
disp(Q*R);

%% =============== Part 1: Computing Q  ================================
%  Q is computed easaly via gram schmidt. 
%

function [Q] = get_Q(A)
    [m,n]=size(A);
    Q=A;
    for i=1:n
        for j=1:i-1
            Q(:,i)=Q(:,i)- (Q(:,j)'*Q(:,i))*Q(:,j);
        end
        Q(:,i)=Q(:,i)/norm(Q(:,i));
    end
end


%% ==================== Part 2: Computing R ====================
%  The following code compute R in the QR factorization of a 
%  given matrix A. This process relies on subtracting the dot product of
%  each element across the diagonal of A with Q from R. Alternatively
%  (commented out), you could just use R = transpose(Q)*A.
%

function [R] = get_R(A,Q)
    [m,n] = size(A);
    Q_tmp = A;
    R=zeros(n);
    %or
    %R = Q'*A;
    for i=1:n
        for j=1:i-1
            R(j,i)=Q_tmp(:,j)'*Q_tmp(:,i);
            Q_tmp(:,i)=Q_tmp(:,i)- R(j,i)*Q_tmp(:,j);
        end
        R(i,i)=norm(Q_tmp(:,i));
        Q_tmp(:,i)=Q_tmp(:,i)/R(i,i);
    end
end

