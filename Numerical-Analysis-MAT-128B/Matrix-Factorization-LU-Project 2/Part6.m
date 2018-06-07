%%% Part (6)
% An algorithm for efficient LDL^T factorization for symmetric positive
% definite matrices

clear L D
format long e

% cd 'C:\Users\Christopher\Desktop\MAT 128B\Project 2';
A = input('Input the matrix: ');

if (size(A,1) ~= size(A,2))
  error('A is not symmetric')
end

n = size(A,1);
Noper = 0;

for j = 1:n
  % Sets the multiples
  A(j+1:n,j) = A(j+1:n,j)/A(j,j);
  Noper = Noper + 1;
  % Altering the entries on and below the diagonal as in LU factorization
  % Note that we are not computing anything in the upper-triangular matrix!
  for i = j+1:n
    % Can be slightly optimized here if we were doing something like LLT
    % instead of LDLT (save 1 multiplication per loop)
    A(i:n,i) = A(i:n,i) - A(i:n,j)*A(i,j)*A(j,j);
    Noper = Noper + 3;
  end
end
L = tril(A,-1);
% Sets the diagonal of L to be 1's
L(logical(eye(size(L)))) = 1;
D = diag(A);
D = diag(D);

fprintf('Done. The matrices are in L and D\n');
