% Problem 1
% clear
format long e

% cd 'C:\Users\Christopher\Desktop\MAT 128A\Project 3';
clear E i j h T sum_vec

range = input('Specify the integration limits: ');
% Verifying the limits are valid
if (numel(range) ~= 2 || range(1) >= range(2))
  error('Your limits of integration are not valid.');
end
a = range(1);
b = range(2);

% Taking the input and converting it into a function
input_func = input('Evaluate f(x) = ', 's');
f = str2func(strcat('@(x)', input_func));

% Make sure the code does not run forever
tol = input('Error tolerance: ');
j_max = input('Safeguard: ');

% Index '1' corresponds to 0 in written vector form
% Setting up the initial trapezoidal rule step
h(1) = b-a;
T(1) = (h(1)/2)*(f(a)+f(b));
% Dividing the interval into subintervals increases precision
for j = 2:(j_max + 1)
  h(j) = (h(j-1)/2);
  for i = 1:(2^((j-1)-1))
    sum_vec(i) = f(a+(2*i-1)*h(j));
  end
  T(j) = (1/2)*(T(j-1)) + h(j)*sum(sum_vec);
  E(j) = (4/3)*abs(T(j)-T(j-1));
  % If tolerance is met, return everything
  if (E(j) <= tol)
    final_approx = T(j);
    error_return = E(j);
    iteration_index = j-1;
    nfcount = 1+2^(j-1);
    output = [final_approx, error_return, iteration_index, nfcount];
    fprintf(['Final approximation: %d\n', ...
             'Conservative error estimate: %d\n', ...
             'Final iteration index: %d\n', ...
             'Number of function evaluations: %d\n'], output);
    return
  end
end
