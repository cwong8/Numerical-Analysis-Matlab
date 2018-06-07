% clear
% cd 'C:\Users\Christopher\Desktop\MAT 128B\Project 3';

format long e

% Part (a)
A = [3,-1,-1,0;2,0,2,2;-1,1,1,1;0,0,-2,-1;3,-1,1,1;1,-1,-3,-2];

% In case R1 and R2 are not made in the program
% That is, check if there is an output line at program termination
% This happens when rank(A) is not n
%R1 = R(:,1:r);
%R2 = R(:,(r+1):n);

% TOL = 10^-16
QR;
% Print Q, R1, R2, P
% Setting up the pivot matrix
I = eye(size(pivot, 2));
P = I(:,pivot);
norm(Q'*Q - eye(size(Q,2)), 2);

% TOL = 10^-14
QR;
% Print Q, R1, R2, P
R1 = R(:,1:r);
R2 = R(:,(r+1):n);
% Setting up the pivot matrix
I = eye(size(pivot, 2));
P = I(:,pivot);
norm(Q'*Q - eye(size(Q,2)), 2);

% TOL = 10^-12
QR;
% Print Q, R1, R2, P
R1 = R(:,1:r);
R2 = R(:,(r+1):n);
% Setting up the pivot matrix
I = eye(size(pivot, 2));
P = I(:,pivot);
norm(Q'*Q - eye(size(Q,2)), 2);

% Part (b)
b = ones(6, 1);

% TOL = 10^-16
QR_solve;
x0;
norm(b - A*x0, 2);

% TOL = 10^-14
QR_solve;
x0;
norm(b - A*x0, 2);

% TOL = 10^-12
QR_solve;
x0;
norm(b - A*x0, 2);


% Part (c)


% Part (d)
Part6; %Input is A'*A
A = [3,-1,-1,0;2,0,2,2;-1,1,1,1;0,0,-2,-1;3,-1,1,1;1,-1,-3,-2];
Cholesky_normal_equations;

% Part (e)
load prog3e
A_orig = A;
% rank(A) = 13 so we can use both methods

% TOL = 10^-14
QR;
R1 = R(:,1:r);
R2 = R(:,(r+1):n);
QR_solve;
norm(b - A*x0, 2);

Part6; % A'*A
A = A_orig;
Cholesky_normal_equations; % A
norm(b - A*x, 2);

% TOL = 10^-12
QR;
R1 = R(:,1:r);
R2 = R(:,(r+1):n);
QR_solve;
norm(b - A*x0, 2);

Part6; % A'*A
A = A_orig;
Cholesky_normal_equations; % A
norm(b - A*x, 2);


% TOL = 10^-10
% Do NOT run LDLT on this because this tolerance level makes it NOT full
% rank!! rank(A) = 11 in this case
QR;
R1 = R(:,1:r);
R2 = R(:,(r+1):n);
QR_solve;
norm(b - A*x0, 2);

% Part (f)
load prog3f

% Method 1
A1 = [ones(size(t)), t.*exp(-t), t.^2.*exp(-2.*t)];
A2 = [ones(size(t)), sqrt(t).*exp(-sqrt(t)), t.*exp(-2.*sqrt(t))];

x1 = A1\b;
x2 = A2\b;

b1 = A1*x1;
b2 = A2*x2;

plot(t, b);
hold on
plot(t, b1, '--');
plot(t, b2, '-.');
hold off
legend('Measured', 'Theory 1', 'Theory 2');
% Theory 1 is more appropriate
