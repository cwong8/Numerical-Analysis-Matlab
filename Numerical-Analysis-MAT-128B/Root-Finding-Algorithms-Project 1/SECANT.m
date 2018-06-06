% Problem 1 SECANT (secant method)
% clear
format long e

% cd 'C:\Users\Christopher\Desktop\MAT 128B\Project 1';

% Taking the input and converting it into a function
input_func = input('Evaluate f(x) = ', 's');
f = str2func(strcat('@(x)', input_func));

x0 = input('Input the first starting value: ');
x1 = input('Input the second starting value: ');
KTOL = input('Input the iteration bound: ');
FTOL = input('Input the function convergence tolerance: ');
XTOL = input('Input the interval convergence tolerance: ');

if (f(x0) == f(x1))
  error('Starting values are not valid.');
end

% Note that x0 is in x(1), x1 is in x(2) and so on
x = [x0, x1];

fx_2 = f(x0);
fx_1 = f(x1);
f_eval = 2;

for k = 3:(KTOL+2)
  % Storing the x_k's in x(k) according to the index offset mentioned above
  x(k) = x(k-1) - (fx_1 * (x(k-1) - x(k-2))) / (fx_1 - fx_2);
  fx = f(x(k));
  f_eval = f_eval + 1;
  if (fx == fx_1)
    % Function value of iteration is the same as previous iteration
    break;
  end
  if (abs(fx) <= FTOL)
    break;
  end
  if (abs(x(k) - x(k-1)) <= (1 + abs(x(k)))*XTOL)
      break;
  end
  % Although this check should theoretically never happen...
  if (k > (KTOL+3))
    fprintf('Method failed.');
  end
  fx_2 = fx_1;
  fx_1 = fx;
end

fprintf('Number of iterations: %d\n', k-2);
fprintf('Number of function evaluations: %d\n', f_eval);
fprintf('Estimated root x = %d and f(x) = %d\n', x(k), fx);