% Problem 3
% clear
format long e

% cd 'C:\Users\Christopher\Desktop\MAT 128A\Project 3';

x = input('Input a vector of x values: ');
a = x(1);
b = x(numel(x));

% Taking the input and converting it into a function
input_func = input('Evaluate f(x) = ', 's');
f = str2func(strcat('@(x)', input_func));

if (numel(x) < 3)
  error('x must be of length 3 or greater');
end

% Constructing the not-a-knot cubic spline and evaluating its integral
y = f(x);
pp = spline(x, y);
I_spline = integral(@(x)ppval(pp, x), a, b);
