% Problem 1 REGFAL (regula falsi method)
% clear
format long e

% cd 'C:\Users\Christopher\Desktop\MAT 128B\Project 1';

% Taking the input and converting it into a function
input_func = input('Evaluate f(x) = ', 's');
f = str2func(strcat('@(x)', input_func));

a0 = input('Input the left endpoint of the initial interval: ');
b0 = input('Input the right endpoint of the initial interval: ');
KTOL = input('Input the iteration bound: ');
FTOL = input('Input the function convergence tolerance: ');
XTOL = input('Input the interval convergence tolerance: ');

if (a0 >= b0 || f(a0)*f(b0) >= 0)
  error('Interval endpoints are not valid.');
end

a = a0;
b = b0;
fa = f(a);
fb = f(b);
f_eval = 2;

% Note that in the lecture notes k starts at 0, so we have to shift the
% index by 1
for k = 1:(KTOL)
  % Storing the x_k's in c(k)
  c(k) = (b*fa - a*fb) / (fa - fb);
  fc = f(c(k));
  f_eval = f_eval + 1;
  if (abs(fc) <= FTOL)
    break;
  end
  if (k > 1)
    if (abs(c(k) - c(k-1)) <= (1 + abs(c(k)))*XTOL)
      break;
    end
  end
  % Although this check should theoretically never happen...
  if (k > (KTOL+1))
    fprintf('Method failed.');
  end
  if (sign(fa) <= sign(fc))
    a = c(k);
    fa = fc;
  else
    b = c(k);
    fb = fc;
  end
end

fprintf('Number of iterations: %d\n', k);
fprintf('Number of function evaluations: %d\n', f_eval);
fprintf('Estimated root x = %d and f(x) = %d\n', c(k), fc);