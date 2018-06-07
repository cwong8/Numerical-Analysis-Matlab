% Part (d)
% Using L and D from M = A'A = LDLT to solve the normal equations.
% Normal equations are A'Ax = A'b where ' denotes transpose.

format long e

% cd 'C:\Users\Christopher\Desktop\MAT 128B\Project 3';

% Input matrices A, L, and D
A = input('Input the matrix A: ');
L = input('Input the matrix L: ');
D = input('Input the matrix D: ');

M = L*D*L';

% Solving the normal equations
% Mx = LDLTx = A'b
x = M\(A'*b);

fprintf('Done. Solution x is given.\n');