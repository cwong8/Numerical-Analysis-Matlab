% Problem 1
% clear
format long e
clear eval_x_func x y deriv_approx;

% cd 'C:\Users\Christopher\Desktop\MAT 128A';

eval_x_func = input('Evaluate the polynomial at x = ');
x = input('Input a vector of x values: ');
y = input('Input a vector of y values: ');

% Calculates the derivative at the specified x values using the simplest
% formula for a derivative: a secant line through the two closest points

% Input checks
n = numel(x) - 1;

if numel(x) ~= numel(y)
  error('Your vectors are not of same length');
else
  if numel(unique(x)) ~= (n+1)
    error('x must be a vector of distinct values');
  end
end

if (max(eval_x_func) > max(x) || min(eval_x_func) < min(x))
  error('Points of evaluation need to be within the given domain');
end

% Setting up vectorized variables
orig_x = x;
display_x = eval_x_func;
copies = numel(eval_x_func);
eval_x_func = repmat(eval_x_func, 1, numel(x));
x = repelem(x, copies);
% To find the interval the point is between, check the signs of the
% differences. A change in sign means it lies between those two points.
token = x - eval_x_func;

for i = 1:copies
  j = i:copies:numel(token);
  token_sub = token(j);
  for k = 1:numel(j)
    % Special case when it is equal to x_0
    if (token_sub(k) == 0 && k == 1)
      indices_j(i) = k+1;
    else
      if (token_sub(k) >= 0)
        indices_j(i) = k;
        % These indices are the j's for each element in eval_x such that
        % eval_x(i) is in the interval [x_(j-1), x_j]
        break
      end
    end
  end
end

for i = 1:copies
  deriv_approx(i) = (y(indices_j(i)) - y(indices_j(i)-1)) / ...
    (orig_x(indices_j(i)) - orig_x(indices_j(i)-1));
end

% Formatting output
output = horzcat(display_x', deriv_approx');
fprintf('f''(%d) = %d\n', output');