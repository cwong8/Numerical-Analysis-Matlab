% Problem 2
% clear
format long e
clear eval_x_func x y w deriv_approx;

% cd 'C:\Users\Christopher\Desktop\MAT 128A';

eval_x_func = input('Evaluate the polynomial at x = ');
x = input('Input a vector of x values: ');
y = input('Input a vector of y values: ');
w = input('Input a vector of scaled barycentric weights: ');

% Calculates the derivative at the specified x values using an
% approximation to a unique polynomial of degree at most n that
% interpolates the data points (x_i, y_i)

% Input checks
n = numel(x) - 1;

if (numel(x) ~= numel(y) || numel(x) ~= numel(w) || numel(y) ~= numel(w))
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
d = eval_x_func - x;

for i = 1:copies
  j = i:copies:numel(d);
  d_sub = d(j);
  % Finding the j such that |x-x_j| is minimized
  [value, smallest_diff_ind] = min(abs(d_sub));
  d_j = d_sub(smallest_diff_ind);
  if (d_j == 0)
    % Calculate using simpler formula
    for k = setdiff(1:numel(orig_x), smallest_diff_ind)
      p(k) = w(k)*((y(smallest_diff_ind)-y(k)) / (orig_x(smallest_diff_ind) - ...
        orig_x(k)));
    end
    p(smallest_diff_ind) = 0;
    p_j = sum(p);
    deriv_approx(i) = -p_j / w(smallest_diff_ind);
  else
    % Calculate according to derived formula in class
    for k = setdiff(1:numel(orig_x), smallest_diff_ind)
      q(k) = (w(k)*y(k)) / (eval_x_func(i) - orig_x(k));
      r(k) = (w(k)) / (eval_x_func(i) - orig_x(k));
      s(k) = (w(k)*y(k)) / (eval_x_func(i) - orig_x(k))^2;
      t(k) = (w(k)) / (eval_x_func(i) - orig_x(k))^2;
    end
    y_j = y(smallest_diff_ind);
    q_j = sum(q);
    r_j = sum(r);
    s_j = sum(s);
    t_j = sum(t);
    deriv_approx(i) = (w(smallest_diff_ind)*(q_j-y_j*r_j+d_j*(y_j*t_j-s_j)) + ...
       (d_j)^2*(q_j*t_j-r_j*s_j)) / (w(smallest_diff_ind)+d_j*r_j)^2;
  end
end

% Formatting output
output = horzcat(display_x', deriv_approx');
fprintf('f''(%d) = %d\n', output');