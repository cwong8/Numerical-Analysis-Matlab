% Part (b) solving the least squares problem using Q, R1, pivot

format long e

% cd 'C:\Users\Christopher\Desktop\MAT 128B\Project 3';

% Input matrices Q, R1, and the pivot vector
Q = input('Input the matrix Q: ');
R1 = input('Input the matrix R1: ');
pivot = input('Input the pivot vector: ');

% Setting up the pivot matrix
I = eye(size(pivot, 2));
P = I(:,pivot);

z1 = zeros(size(R1, 2), 1);
z1 = R1\(Q'*b);
z1sol = [z1; zeros(size(pivot, 2) - size(R1, 2), 1)];
x0 = P*z1sol;

fprintf('Done. Solution x0 is given.\n');