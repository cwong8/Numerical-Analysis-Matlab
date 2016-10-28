% Problem 2
% clear
format long e

% cd 'C:\Users\Christopher\Desktop\MAT 128A\Project 1';

% Use Divided_differences_P1 to get the vector a
Divided_differences_P1;

% Since we already call Divided_differences_P1 some arguments are already
% provided.

% n = input('Specify the power of the desired polynomial: ');
eval_x = input('Evaluate the polynomial at x = ');
% x = input('Input a vector of x values: ');
% a = input('Input the coefficients of the Newton form of p: ');

if numel(x) == (n+1)
  xn = x(1:n);
end

if numel(a) ~= (n+1)
  error('Your vectors are not of length n+1');
else
  if numel(unique(xn)) ~= (n)
    error('x must be a vector of distinct values');
  end
end

eval_y = repelem(a(n+1), numel(eval_x));
for j = n:-1:1
  for i = 1:(numel(eval_x))
    eval_y(i) = a(j) + (eval_x(i) - xn(j)).*eval_y(i);
  end
end

output = horzcat(eval_x', eval_y');
fprintf('f(%d) = %d\n', output');
