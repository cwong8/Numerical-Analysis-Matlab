% Part (a) QR factorization using Gram-Schmidt process applied to general
% matrices
clear Q R pivot R1 R2 i j k m n i0 normq qtilde r val
format long e

% cd 'C:\Users\Christopher\Desktop\MAT 128B\Project 3';

% Input a matrix A and a tolerance TOL >= 0
A = input('Input the matrix: ');
TOL = input('Input the tolerance: ');

if (TOL < 0)
  error('Tolerance must be zero or positive');
end

[m, n] = size(A);
Q = A;
R = zeros(n, n);
pivot = [1:n];
r = n;

for j = 1:n
  % 1)
  for i = j:n
    normq(i) = norm(Q(:,i), 2);
  end
  % 2)
  if (norm(normq(j:n), 2) <= TOL)
    r = j - 1;
    Q = Q(:,1:r);
    R = R(1:r,:);
    return
  end
  % 3)
  [val, i0] = max(normq((j+1):(n-1)));
  % 4)
  if (i0 > j)
    tmp = Q(:,j);
    Q(:,j) = Q(:,i0);
    Q(:,i0) = tmp;
    tmp = R(1:j-1,j);
    R(1:j-1,j) = R(1:j-1,i0);
    R(1:j-1,i0) = tmp;
    tmp = pivot(j);
    pivot(j) = pivot(i0);
    pivot(i0) = tmp;
  end
  % 5)
  R(j,j) = norm(Q(:,j), 2);
  % 6)
  qtilde = Q(:,j) / R(j,j);
  % 7)
  Q(:,j) = qtilde;
  % 8)
  for k = (j+1):n
    R(j,k) = qtilde'*Q(:,k);
    Q(:,k) = Q(:,k) - R(j,k)*qtilde;
  end
end

% Not sure why the program terminates before these lines for r < n
R1 = R(:,1:r);
R2 = R(:,(r+1):n);

fprintf('Done. Matrices Q, R (R1 and R2), and pivot vector created\n');