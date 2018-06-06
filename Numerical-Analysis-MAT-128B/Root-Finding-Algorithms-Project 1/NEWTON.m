% Problem 1 NEWTON (Newton's method)
% clear
format long e

% cd 'C:\Users\Christopher\Desktop\MAT 128B\Project 1';

% Taking the input and converting it into a function
input_func = input('Evaluate f(x) = ', 's');
f = str2func(strcat('@(x)', input_func));

input_func_prime = input('f''(x) = ', 's');
f_prime = str2func(strcat('@(x)', input_func_prime));

x0 = input('Input the initial guess: ');
KTOL = input('Input the iteration bound: ');
FTOL = input('Input the function convergence tolerance: ');
XTOL = input('Input the interval convergence tolerance: ');

if (f_prime(x0) == 0)
  error('Derivative at initial guess is 0');
else
  x = x0;
  f_prime_eval = 0;
end

fx_1 = f(x0);
f_eval = 1;

for k = 2:(KTOL+1)
  if (f_prime(x(k-1)) == 0)
    fprintf('Stopped at iteration: %d\n', k-1);
    error('Derivative at estimate is zero.')
  end
  % Storing the x_k's in x(k) according to the index offset mentioned above
  x(k) = x(k-1) - (fx_1 / f_prime(x(k-1)));
  fx = f(x(k));
  f_eval = f_eval + 1;
  f_prime_eval = f_prime_eval + 1;
  if (abs(fx) <= FTOL)
    break;
  end
  if (abs(x(k) - x(k-1)) <= (1 + abs(x(k)))*XTOL)
      break;
  end
  % Although this check should theoretically never happen...
  if (k > (KTOL+2))
    fprintf('Method failed.');
  end
  fx_1 = fx;
end

fprintf('Number of iterations: %d\n', k-1);
fprintf('Number of function evaluations: %d\n', f_eval);
fprintf('Number of derivative evaluations: %d\n', f_prime_eval);
fprintf('Estimated root x = %d and f(x) = %d\n', x(k), fx);