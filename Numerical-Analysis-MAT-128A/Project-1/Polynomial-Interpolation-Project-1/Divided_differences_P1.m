% Problem 1
% clear
format long e

% cd 'C:\Users\Christopher\Desktop\MAT 128A\Project 1';

n = input('Specify the power of the desired polynomial: ');
x = input('Input a vector of x values: ');
y = input('Input a vector of y values: ');

% Calculates the divided differences and returns them in a along with
% divided differences table f

if numel(x) ~= (n+1) || numel(y) ~= (n+1)
  error('Your vectors are not of length n+1');
else
  if numel(unique(x)) ~= (n+1)
    error('x must be a vector of distinct values');
  end
end
a = zeros(1, (n+1));
f = zeros((n+1), (n+1));
f(:, 1) = y';
for i = 2:(n+1)
  for j = i:(n+1)
    f(j, i) = (f(j, (i-1)) - f((j-1), (i-1))) / (x(j) - x(j-i+1));
  end
end
a = diag(f);
