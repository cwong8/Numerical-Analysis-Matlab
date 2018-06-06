% Problem 3
% clear
format long e
clear eval_x_func x y deriv_approx;

% cd 'C:\Users\Christopher\Desktop\MAT 128A';

eval_x_func = input('Evaluate the polynomial at x = ');
x = input('Input a vector of x values: ');
y = input('Input a vector of y values: ');

% Calculates the derivative at the specified x values using the derivative
% of the not-a-knot cubic spline that interpolates the data points
% (x_i,y_i)

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

% From lecture, we were shown to use these functions
pp = spline(x, y);
breaks = pp.breaks;
coefs = pp.coefs;
dcoefs = [3*coefs(:,1), 2*coefs(:,2), coefs(:,3)];
ppd = mkpp(breaks, dcoefs);
yyd = ppval(ppd, eval_x_func);

% Formatting output
output = horzcat(eval_x_func', yyd');
fprintf('f''(%d) = %d\n', output');