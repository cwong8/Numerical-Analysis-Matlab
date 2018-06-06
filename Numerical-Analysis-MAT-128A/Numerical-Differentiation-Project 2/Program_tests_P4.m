% Problem 4
% clear
format long e

% cd 'C:\Users\Christopher\Desktop\MAT 128A';

a = -1;
b = 2;
eval_x = [-1, -0.5, 0, 1, 2];
% f(x) = e^x * sin(5x)
f = @(x) exp(x).*sin(5.*x);
% f'(x) = e^x * sin(5x) + 5e^x*sin(5x)
f_prime = @(x) exp(x).*sin(5.*x) + 5*exp(x).*cos(5.*x)

% Testing programs
n = 5;

for i = 1:(n+1)
  x_5(i) = (a+b)/2 + ((b-a)*cos(pi*(n-(i-1))/n))/2;
end

% y_i = f(x_i)
y_5 = f(x_5);

Secant_Approx_P1; %eval_x, x_5, y_5
% f'(-1) = -5.246717e-01
% f'(-5.000000e-01) = -1.915057e-02
% f'(0) = -1.915057e-02
% f'(1) = 9.067958e+00
% f'(2) = -2.867393e+01
output_p1_5 = output;

% |f'(x) - c(x)|
diff_p1_5 = output_p1_5(:, 2) - f_prime(eval_x)';

for i = 1:n+1
  w_5(i) = (-1)^(i-1) * nchoosek(n, (i-1));
end
Interpolating_polynomial_approx_P2; %eval_x, x_5, y_5, w_5
% f'(-1) = -2.464189e+01
% f'(-5.000000e-01) = 2.292914e+00
% f'(0) = -3.674820e+00
% f'(1) = 3.293812e+00
% f'(2) = -1.448411e+02
output_p2_5 = output;

% |f'(x) - p'(x)|
diff_p2_5 = output_p2_5(:, 2) - f_prime(eval_x)';

Cubic_spline_approx_P3; %eval_x, x_5, y_5
% f'(-1) = -2.482326e+00
% f'(-5.000000e-01) = 1.513320e+00
% f'(0) = -3.674874e+00
% f'(1) = 1.118660e+01
% f'(2) = -4.938357e+01
output_p3_5 = output;

% |f'(x) - s'(x)|
diff_p3_5 = output_p3_5(:, 2) - f_prime(eval_x)';

% Plot of functions
Secant_Approx_P1; %linspace(a, b), x_5, y_5
p1_5_points = output;

Interpolating_polynomial_approx_P2; %linspace(a, b), x_5, y_5, w_5
p2_5_points = output;

Cubic_spline_approx_P3; %linspace(a, b), x_5, y_5
p3_5_points = output;

figure
plot(linspace(a, b), f_prime(linspace(a, b)), 'k', ...
  linspace(a, b), p1_5_points(:, 2), 'o', ...
  linspace(a, b), p2_5_points(:, 2), 'x', ...
  linspace(a, b), p3_5_points(:, 2), '+');
title('n = 5')
xlabel('-1 \leq x \leq 2')
legend('y = f''(x)','y = c(x)','y = p''_n(x)','y = s''(x)','Location','northeast')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
n = 10;

for i = 1:(n+1)
  x_10(i) = (a+b)/2 + ((b-a)*cos(pi*(n-(i-1))/n))/2;
end

% y_i = f(x_i)
y_10 = f(x_10);

Secant_Approx_P1; %eval_x, x_10, y_10
% f'(-1) = 5.705305e-01
% f'(-5.000000e-01) = -2.551298e+00
% f'(0) = 1.990373e+00
% f'(1) = 1.180596e+01
% f'(2) = -3.542815e+01
output_p1_10 = output;

% |f'(x) - c(x)|
diff_p1_10 = output_p1_10(:, 2) - f_prime(eval_x)';

for i = 1:n+1
  w_10(i) = (-1)^(i-1) * nchoosek(n, (i-1));
end
Interpolating_polynomial_approx_P2; %eval_x, x_10, y_10, w_10
% f'(-1) = 3.235164e+02
% f'(-5.000000e-01) = -5.670380e+00
% f'(0) = 5.624026e+00
% f'(1) = 2.800506e-01
% f'(2) = -5.147136e+02
output_p2_10 = output;

% |f'(x) - p'(x)|
diff_p2_10 = output_p2_10(:, 2) - f_prime(eval_x)';

Cubic_spline_approx_P3; %eval_x, x_10, y_10
Input a vector of y values: y_10
% f'(-1) = 8.935738e-01
% f'(-5.000000e-01) = -2.742904e+00
% f'(0) = 4.174280e+00
% f'(1) = 3.867150e+00
% f'(2) = -3.560134e+01
output_p3_10 = output;

% |f'(x) - s'(x)|
diff_p3_10 = output_p3_10(:, 2) - f_prime(eval_x)';

% Plot of functions
Secant_Approx_P1; %linspace(a, b), x_10, y_10
p1_10_points = output;

Interpolating_polynomial_approx_P2; %linspace(a, b), x_10, y_10, w_10
p2_10_points = output;

Cubic_spline_approx_P3; %linspace(a, b), x_10, y_10
p3_10_points = output;

figure
plot(linspace(a, b), f_prime(linspace(a, b)), 'k', ...
  linspace(a, b), p1_10_points(:, 2), 'o', ...
  linspace(a, b), p2_10_points(:, 2), 'x', ...
  linspace(a, b), p3_10_points(:, 2), '+');
title('n = 10')
xlabel('-1 \leq x \leq 2')
legend('y = f''(x)','y = c(x)','y = p''_n(x)','y = s''(x)','Location','southwest')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
n = 20;

for i = 1:(n+1)
  x_20(i) = (a+b)/2 + ((b-a)*cos(pi*(n-(i-1))/n))/2;
end

% y_i = f(x_i)
y_20 = f(x_20);

Secant_Approx_P1; %eval_x, x_20, y_20
% f'(-1) = 8.038905e-01
% f'(-5.000000e-01) = -2.540661e+00
% f'(0) = 3.882521e+00
% f'(1) = 6.453555e+00
% f'(2) = -3.528250e+01
output_p1_20 = output;

% |f'(x) - c(x)|
diff_p1_20 = output_p1_20(:, 2) - f_prime(eval_x)';

for i = 1:n+1
  w_20(i) = (-1)^(i-1) * nchoosek(n, (i-1));
end
Interpolating_polynomial_approx_P2; %eval_x, x_20, y_20, w_20
% f'(-1) = -2.652843e+02
% f'(-5.000000e-01) = -2.786630e+00
% f'(0) = 4.391759e+00
% f'(1) = 1.295969e+00
% f'(2) = -2.174351e+02
output_p2_20 = output;

% |f'(x) - p'(x)|
diff_p2_20 = output_p2_20(:, 2) - f_prime(eval_x)';

Cubic_spline_approx_P3; %eval_x, x_20, y_20
% f'(-1) = 8.750090e-01
% f'(-5.000000e-01) = -2.799024e+00
% f'(0) = 4.937599e+00
% f'(1) = 1.455933e+00
% f'(2) = -3.502445e+01
output_p3_20 = output;

% |f'(x) - s'(x)|
diff_p3_20 = output_p3_20(:, 2) - f_prime(eval_x)';

% Plot of functions
Secant_Approx_P1; %linspace(a, b), x_20, y_20
p1_20_points = output;

Interpolating_polynomial_approx_P2; %linspace(a, b), x_20, y_20, w_20
p2_20_points = output;

Cubic_spline_approx_P3; %linspace(a, b), x_20, y_20
p3_20_points = output;

figure
plot(linspace(a, b), f_prime(linspace(a, b)), 'k', ...
  linspace(a, b), p1_20_points(:, 2), 'o', ...
  linspace(a, b), p2_20_points(:, 2), 'x', ...
  linspace(a, b), p3_20_points(:, 2), '+');
title('n = 20')
xlabel('-1 \leq x \leq 2')
legend('y = f''(x)','y = c(x)','y = p''_n(x)','y = s''(x)','Location','southwest')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
n = 40;

for i = 1:(n+1)
  x_40(i) = (a+b)/2 + ((b-a)*cos(pi*(n-(i-1))/n))/2;
end

% y_i = f(x_i)
y_40 = f(x_40);

Secant_Approx_P1; %eval_x, x_40, y_40
% f'(-1) = 8.572408e-01
% f'(-5.000000e-01) = -2.823003e+00
% f'(0) = 4.742304e+00
% f'(1) = 2.623972e+00
% f'(2) = -3.509576e+01
output_p1_40 = output;

% |f'(x) - c(x)|
diff_p1_40 = output_p1_40(:, 2) - f_prime(eval_x)';

for i = 1:n+1
  w_40(i) = (-1)^(i-1) * nchoosek(n, (i-1));
end
Interpolating_polynomial_approx_P2; %eval_x, x_40, y_40, w_40
% f'(-1) = 8.855269e-01
% f'(-5.000000e-01) = -2.792634e+00
% f'(0) = 4.495111e+00
% f'(1) = 1.295107e+00
% f'(2) = -3.516484e+01
output_p2_40 = output;

% |f'(x) - p'(x)|
diff_p2_40 = output_p2_40(:, 2) - f_prime(eval_x)';

Cubic_spline_approx_P3; %eval_x, x_40, y_40
% f'(-1) = 8.745426e-01
% f'(-5.000000e-01) = -2.792194e+00
% f'(0) = 4.995672e+00
% f'(1) = 1.262928e+00
% f'(2) = -3.501960e+01
output_p3_40 = output;

% |f'(x) - s'(x)|
diff_p3_40 = output_p3_40(:, 2) - f_prime(eval_x)';

% Plot of functions
Secant_Approx_P1; %linspace(a, b), x_40, y_40
p1_40_points = output;

Interpolating_polynomial_approx_P2; %linspace(a, b), x_40, y_40, w_40
p2_40_points = output;

Cubic_spline_approx_P3; %linspace(a, b), x_40, y_40
p3_40_points = output;

figure
plot(linspace(a, b), f_prime(linspace(a, b)), 'k', ...
  linspace(a, b), p1_40_points(:, 2), 'o', ...
  linspace(a, b), p2_40_points(:, 2), 'x', ...
  linspace(a, b), p3_40_points(:, 2), '+');
title('n = 40')
xlabel('-1 \leq x \leq 2')
legend('y = f''(x)','y = c(x)','y = p''_n(x)','y = s''(x)','Location','southwest')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
n = 80;

for i = 1:(n+1)
  x_80(i) = (a+b)/2 + ((b-a)*cos(pi*(n-(i-1))/n))/2;
end

% y_i = f(x_i)
y_80 = f(x_80);

Secant_Approx_P1; %eval_x, x_80, y_80
% f'(-1) = 8.702355e-01
% f'(-5.000000e-01) = -2.770806e+00
% f'(0) = 5.067618e+00
% f'(1) = 6.608442e-01
% f'(2) = -3.503925e+01
output_p1_80 = output;

% |f'(x) - c(x)|
diff_p1_80 = output_p1_80(:, 2) - f_prime(eval_x)';

for i = 1:n+1
  w_80(i) = (-1)^(i-1) * nchoosek(n, (i-1));
end
Interpolating_polynomial_approx_P2; %eval_x, x_80, y_80, w_80
% f'(-1) = -1.139312e+08
% f'(-5.000000e-01) = -2.792583e+00
% f'(0) = 5.210831e+00
% f'(1) = 1.222466e+00
% f'(2) = 1.070894e+09
output_p2_80 = output;

% |f'(x) - p'(x)|
diff_p2_80 = output_p2_80(:, 2) - f_prime(eval_x)';

Cubic_spline_approx_P3; %eval_x, x_80, y_80
% f'(-1) = 8.745361e-01
% f'(-5.000000e-01) = -2.792614e+00
% f'(0) = 5.000504e+00
% f'(1) = 1.247069e+00
% f'(2) = -3.501954e+01
output_p3_80 = output;

% |f'(x) - s'(x)|
diff_p3_80 = output_p3_80(:, 2) - f_prime(eval_x)';

% Plot of functions
Secant_Approx_P1; %linspace(a, b), x_80, y_80
p1_80_points = output;

Interpolating_polynomial_approx_P2; %linspace(a, b), x_80, y_80, w_80
p2_80_points = output;

Cubic_spline_approx_P3; %linspace(a, b), x_80, y_80
p3_80_points = output;

figure
plot(linspace(a, b), f_prime(linspace(a, b)), 'k', ...
  linspace(a, b), p1_80_points(:, 2), 'o', ...
  linspace(a, b), p2_80_points(:, 2), 'x', ...
  linspace(a, b), p3_80_points(:, 2), '+');
title('n = 80')
xlabel('-1 \leq x \leq 2')
legend('y = f''(x)','y = c(x)','y = p''_n(x)','y = s''(x)','Location','northwest')