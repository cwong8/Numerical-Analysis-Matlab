% Problem 2
% clear
format long e

% cd 'C:\Users\Christopher\Desktop\MAT 128A\Project 3';
clear E i j h S sum_vec B A

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
B(1) = 2*f((a+b)/2);
A(1) = f(a) + B(1) + f(b);
S(1) = (h(1)/6)*(A(1)+B(1));
% Dividing the interval into subintervals increases precision
for j = 2:(j_max + 1)
  h(j) = (h(j-1)/2);
  for i = 1:(2^(j-1))
    sum_vec(i) = f(a+(2*i-1)*(h(j)/2));
  end
  B(j) = 2*sum(sum_vec);
  A(j) = A(j-1) + B(j);
  S(j) = (h(j)/6)*(A(j)+B(j));
  E(j) = (16/15)*abs(S(j)-S(j-1));
  % If tolerance is met, return everything
  if (E(j) <= tol)
    final_approx = S(j);
    error_return = E(j);
    iteration_index = j-1;
    nfcount = 1+2^j;
    output = [final_approx, error_return, iteration_index, nfcount];
    fprintf(['Final approximation: %d\n', ...
             'Conservative error estimate: %d\n', ...
             'Final iteration index: %d\n', ...
             'Number of function evaluations: %d\n'], output);
    return
  end
end
