% Problem 5
% clear
format long e

% cd 'C:\Users\Christopher\Desktop\MAT 128A\Project 1';

% Part (a)
n = 5;
for i = 1:(n+1)
  x_a_5(i) = -pi + (2*pi/n)*(i-1);
end
y_a_5 = sin(x_a_5);

x6_a_5 = [-pi, pi, -pi + (pi/n)*(2*(1)-1), -pi + (pi/n)*(2*(2)-1), ...
  -pi + (pi/n)*(2*(n-2)-1), -pi + (pi/n)*(2*(n-1)-1)];

% f(x)
f_a_5 = zeros(1, 6);
f_a_5 = sin(x6_a_5);

% p1(x) Horner's Rule
Horners_Rule_P2; %n, x_a_5, y_a_5, x6_a_5
% f(-3.141593e+00) = -1.224647e-16
% f(3.141593e+00) = 5.751090e-16
% f(-2.513274e+00) = -5.659551e-01
% f(-1.256637e+00) = -9.549555e-01
% f(0) = 2.263222e-16
% f(1.256637e+00) = 9.549555e-01
output_p1_a_5 = output;

% |f(x) - p1(x)|
diff_p1_a_5 = output_p1_a_5(:, 2) - f_a_5';

% p2(x)
for i = 1:n+1
  w_a(i) = (-1)^(i-1) * nchoosek(n, (i-1));
end
Barycentric_interpolation_P4; %n, x6_a_5, x_a_5, y_a_5, w_a
% f(-3.141593e+00) = -1.224647e-16
% f(3.141593e+00) = 1.224647e-16
% f(-2.513274e+00) = -5.659551e-01
% f(-1.256637e+00) = -9.549555e-01
% f(0) = 1.435133e-18
% f(1.256637e+00) = 9.549555e-01
output_p2_a_5 = output;

% |f(x) - p2(x)|
diff_p2_a_5 = output_p2_a_5(:, 2) - f_a_5';

% Plot of functions
Horners_Rule_P2; %n, x_a_5, y_a_5, linspace(-pi, pi)
p1_a_5_points = output;

Barycentric_interpolation_P4; %n, linspace(-pi, pi), x_a_5, y_a_5, w_a
p2_a_5_points = output;

figure
plot(linspace(-pi, pi), sin(linspace(-pi, pi)), 'k', ...
  linspace(-pi, pi), p1_a_5_points(:, 2), 'o', ...
  linspace(-pi, pi), p2_a_5_points(:, 2), 'x');
title('Part a, n = 5')
xlabel('-\pi \leq x \leq \pi')
legend('y = f(x)','y = p^{(1)}_n(x)','y = p^{(2)}_n(x)','Location','southeast')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

n = 10;
for i = 1:(n+1)
  x_a_10(i) = -pi + (2*pi/n)*(i-1);
end
y_a_10 = sin(x_a_10);

x6_a_10 = [-pi, pi, -pi + (pi/n)*(2*(1)-1), -pi + (pi/n)*(2*(2)-1), ...
  -pi + (pi/n)*(2*(n-2)-1), -pi + (pi/n)*(2*(n-1)-1)];

% f(x)
f_a_10 = zeros(1, 6);
f_a_10 = sin(x6_a_10);

% p1(x) Horner's Rule
Horners_Rule_P2; %n, x_a_10, y_a_10, x6_a_10
% f(-3.141593e+00) = -1.224647e-16
% f(3.141593e+00) = -1.224647e-16
% f(-2.827433e+00) = -3.089772e-01
% f(-2.199115e+00) = -8.090234e-01
% f(1.570796e+00) = 9.999981e-01
% f(2.199115e+00) = 8.090234e-01
output_p1_a_10 = output;

% |f(x) - p1(x)|
diff_p1_a_10 = output_p1_a_10(:, 2) - f_a_10';

% p2(x)
for i = 1:n+1
  w_a(i) = (-1)^(i-1) * nchoosek(n, (i-1));
end
Barycentric_interpolation_P4; %n, x6_a_10, x_a_10, y_a_10, w_a
% f(-3.141593e+00) = -1.224647e-16
% f(3.141593e+00) = 1.224647e-16
% f(-2.827433e+00) = -3.089772e-01
% f(-2.199115e+00) = -8.090234e-01
% f(1.570796e+00) = 9.999981e-01
% f(2.199115e+00) = 8.090234e-01
output_p2_a_10 = output;

% |f(x) - p2(x)|
diff_p2_a_10 = output_p2_a_10(:, 2) - f_a_10';

% Plot of functions
Horners_Rule_P2; %n, x_a_10, y_a_10, linspace(-pi, pi)
p1_a_10_points = output;

Barycentric_interpolation_P4; %n, linspace(-pi, pi), x_a_10, y_a_10, w_a
p2_a_10_points = output;

figure
plot(linspace(-pi, pi), sin(linspace(-pi, pi)), 'k', ...
  linspace(-pi, pi), p1_a_10_points(:, 2), 'o', ...
  linspace(-pi, pi), p2_a_10_points(:, 2), 'x');
title('Part a, n = 10')
xlabel('-\pi \leq x \leq \pi')
legend('y = f(x)','y = p^{(1)}_n(x)','y = p^{(2)}_n(x)','Location','southeast')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

n = 20
for i = 1:(n+1)
  x_a_20(i) = -pi + (2*pi/n)*(i-1);
end
y_a_20 = sin(x_a_20);

x6_a_20 = [-pi, pi, -pi + (pi/n)*(2*(1)-1), -pi + (pi/n)*(2*(2)-1), ...
  -pi + (pi/n)*(2*(n-2)-1), -pi + (pi/n)*(2*(n-1)-1)];

% f(x)
f_a_20 = zeros(1, 6);
f_a_20 = sin(x6_a_20);

% p1(x) Horner's Rule
Horners_Rule_P2; %n, x_a_20, y_a_20, x6_a_20
% f(-3.141593e+00) = -1.224647e-16
% f(3.141593e+00) = 2.667830e-15
% f(-2.984513e+00) = -1.564345e-01
% f(-2.670354e+00) = -4.539905e-01
% f(2.356194e+00) = 7.071068e-01
% f(2.670354e+00) = 4.539905e-01
output_p1_a_20 = output;

% |f(x) - p1(x)|
diff_p1_a_20 = output_p1_a_20(:, 2) - f_a_20';

% p2(x)
for i = 1:n+1
  w_a(i) = (-1)^(i-1) * nchoosek(n, (i-1));
end
Barycentric_interpolation_P4; %n, x6_a_20, x_a_20, y_a_20, w_a
% f(-3.141593e+00) = -1.224647e-16
% f(3.141593e+00) = 1.224647e-16
% f(-2.984513e+00) = -1.564345e-01
% f(-2.670354e+00) = -4.539905e-01
% f(2.356194e+00) = 7.071068e-01
% f(2.670354e+00) = 4.539905e-01
output_p2_a_20 = output;

% |f(x) - p2(x)|
diff_p2_a_20 = output_p2_a_20(:, 2) - f_a_20';

% Plot of functions
Horners_Rule_P2; %n, x_a_20, y_a_20, linspace(-pi, pi)
p1_a_20_points = output;

Barycentric_interpolation_P4; %n, linspace(-pi, pi), x_a_20, y_a_20, w_a
p2_a_20_points = output;

figure
plot(linspace(-pi, pi), sin(linspace(-pi, pi)), 'k', ...
  linspace(-pi, pi), p1_a_20_points(:, 2), 'o', ...
  linspace(-pi, pi), p2_a_20_points(:, 2), 'x');
title('Part a, n = 20')
xlabel('-\pi \leq x \leq \pi')
legend('y = f(x)','y = p^{(1)}_n(x)','y = p^{(2)}_n(x)','Location','southeast')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

n = 40
for i = 1:(n+1)
  x_a_40(i) = -pi + (2*pi/n)*(i-1);
end
y_a_40 = sin(x_a_40);

x6_a_40 = [-pi, pi, -pi + (pi/n)*(2*(1)-1), -pi + (pi/n)*(2*(2)-1), ...
  -pi + (pi/n)*(2*(n-2)-1), -pi + (pi/n)*(2*(n-1)-1)];

% f(x)
f_a_40 = zeros(1, 6);
f_a_40 = sin(x6_a_40);

% p1(x) Horner's Rule
Horners_Rule_P2; %n, x_a_40, y_a_40, x6_a_40
% f(-3.141593e+00) = -1.224647e-16
% f(3.141593e+00) = 2.667830e-15
% f(-2.984513e+00) = -1.564345e-01
% f(-2.670354e+00) = -4.539905e-01
% f(2.356194e+00) = 7.071068e-01
% f(2.670354e+00) = 4.539905e-01
output_p1_a_40 = output;

% |f(x) - p1(x)|
diff_p1_a_40 = output_p1_a_40(:, 2) - f_a_40';

% p2(x)
for i = 1:n+1
  w_a(i) = (-1)^(i-1) * nchoosek(n, (i-1));
end
Barycentric_interpolation_P4; %n, x6_a_40, x_a_40, y_a_40, w_a
% f(-3.141593e+00) = -1.224647e-16
% f(3.141593e+00) = 1.224647e-16
% f(-2.984513e+00) = -1.564345e-01
% f(-2.670354e+00) = -4.539905e-01
% f(2.356194e+00) = 7.071068e-01
% f(2.670354e+00) = 4.539905e-01
output_p2_a_40 = output;

% |f(x) - p2(x)|
diff_p2_a_40 = output_p2_a_40(:, 2) - f_a_40';

% Plot of functions
Horners_Rule_P2; %n, x_a_40, y_a_40, linspace(-pi, pi)
p1_a_40_points = output;

Barycentric_interpolation_P4; %n, linspace(-pi, pi), x_a_40, y_a_40, w_a
p2_a_40_points = output;

figure
plot(linspace(-pi, pi), sin(linspace(-pi, pi)), 'k', ...
  linspace(-pi, pi), p1_a_40_points(:, 2), 'o', ...
  linspace(-pi, pi), p2_a_40_points(:, 2), 'x');
title('Part a, n = 40')
xlabel('-\pi \leq x \leq \pi')
legend('y = f(x)','y = p^{(1)}_n(x)','y = p^{(2)}_n(x)','Location','southeast')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Part (b)
n = 5;
for i = 1:(n+1)
  x_b_5(i) = -5 + (10/n)*(i-1);
end

for i = 1:(n+1)
  y_b_5(i) = 1 / (1 + x_b_5(i)^2);
end

x6_b_5 = [-5, 5, -5 + (5/n)*(2*(1)-1), -5 + (5/n)*(2*(2)-1), ...
  -5 + (5/n)*(2*(n-2)-1), -5 + (5/n)*(2*(n-1)-1)];

% f(x)
f_b_5 = zeros(1, 6);
for i = 1:6
  f_b_5(i) = 1 / (1+x6_b_5(i)^2);
end

% p1(x) Horner's Rule
Horners_Rule_P2; %n, x_b_5, y_b_5, x6_b_5
% f(-5) = 3.846154e-02
% f(5) = 3.846154e-02
% f(-4) = -4.807692e-02
% f(-2) = 3.211538e-01
% f(0) = 5.673077e-01
% f(2) = 3.211538e-01
output_p1_b_5 = output;

% |f(x) - p1(x)|
diff_p1_b_5 = output_p1_b_5(:, 2) - f_b_5';

% p2(x)
for i = 1:n+1
  w_b(i) = (-1)^(i-1) * nchoosek(n, (i-1));
end
Barycentric_interpolation_P4; %n, x6_b_5, x_b_5, y_b_5, w_b
% f(-5) = 3.846154e-02
% f(5) = 3.846154e-02
% f(-4) = -4.807692e-02
% f(-2) = 3.211538e-01
% f(0) = 5.673077e-01
% f(2) = 3.211538e-01
output_p2_b_5 = output;

% |f(x) - p2(x)|
diff_p2_b_5 = output_p2_b_5(:, 2) - f_b_5';

% Plot of functions
Horners_Rule_P2; %n, x_b_5, y_b_5, linspace(-5, 5)
p1_b_5_points = output;

Barycentric_interpolation_P4; %n, linspace(-5, 5), x_b_5, y_b_5, w_b
p2_b_5_points = output;

f = @(x) 1./(1+x.^2);

figure
plot(linspace(-5, 5), f(linspace(-5, 5)), 'k', ...
  linspace(-5, 5), p1_b_5_points(:, 2), 'o', ...
  linspace(-5, 5), p2_b_5_points(:, 2), 'x');
title('Part b, n = 5')
xlabel('-5 \leq x \leq 5')
legend('y = f(x)','y = p^{(1)}_n(x)','y = p^{(2)}_n(x)','Location','northeast')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

n = 10;
for i = 1:(n+1)
  x_b_10(i) = -5 + (10/n)*(i-1);
end

for i = 1:(n+1)
  y_b_10(i) = 1 / (1 + x_b_10(i)^2);
end

x6_b_10 = [-5, 5, -5 + (5/n)*(2*(1)-1), -5 + (5/n)*(2*(2)-1), ...
  -5 + (5/n)*(2*(n-2)-1), -5 + (5/n)*(2*(n-1)-1)];

% f(x)
f_b_10 = zeros(1, 6);
for i = 1:6
  f_b_10(i) = 1 / (1+x6_b_10(i)^2);
end

% p1(x) Horner's Rule
Horners_Rule_P2; %n, x_b_10, y_b_10, x6_b_10
% f(-5) = 3.846154e-02
% f(5) = 3.846154e-02
% f(-4.500000e+00) = 1.578721e+00
% f(-3.500000e+00) = -2.261963e-01
% f(2.500000e+00) = 2.537555e-01
% f(3.500000e+00) = -2.261963e-01
output_p1_b_10 = output;

% |f(x) - p1(x)|
diff_p1_b_10 = output_p1_b_10(:, 2) - f_b_10';

% p2(x)
for i = 1:n+1
  w_b(i) = (-1)^(i-1) * nchoosek(n, (i-1));
end
Barycentric_interpolation_P4; %n, x6_b_10, x_b_10, y_b_10, w_b
% f(-5) = 3.846154e-02
% f(5) = 3.846154e-02
% f(-4.500000e+00) = 1.578721e+00
% f(-3.500000e+00) = -2.261963e-01
% f(2.500000e+00) = 2.537555e-01
% f(3.500000e+00) = -2.261963e-01
output_p2_b_10 = output;

% |f(x) - p2(x)|
diff_p2_b_10 = output_p2_b_10(:, 2) - f_b_10';

% Plot of functions
Horners_Rule_P2; %n, x_b_10, y_b_10, linspace(-5, 5)
p1_b_10_points = output;

Barycentric_interpolation_P4; %n, linspace(-5, 5), x_b_10, y_b_10, w_b
p2_b_10_points = output;

f = @(x) 1./(1+x.^2);

figure
plot(linspace(-5, 5), f(linspace(-5, 5)), 'k', ...
  linspace(-5, 5), p1_b_10_points(:, 2), 'o', ...
  linspace(-5, 5), p2_b_10_points(:, 2), 'x');
title('Part b, n = 10')
xlabel('-5 \leq x \leq 5')
legend('y = f(x)','y = p^{(1)}_n(x)','y = p^{(2)}_n(x)','Location','northeast')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

n = 20;
for i = 1:(n+1)
  x_b_20(i) = -5 + (10/n)*(i-1);
end

for i = 1:(n+1)
  y_b_20(i) = 1 / (1 + x_b_20(i)^2);
end

x6_b_20 = [-5, 5, -5 + (5/n)*(2*(1)-1), -5 + (5/n)*(2*(2)-1), ...
  -5 + (5/n)*(2*(n-2)-1), -5 + (5/n)*(2*(n-1)-1)];

% f(x)
f_b_20 = zeros(1, 6);
for i = 1:6
  f_b_20(i) = 1 / (1+x6_b_20(i)^2);
end

% p1(x) Horner's Rule
Horners_Rule_P2; %n, x_b_20, y_b_20, x6_b_20
% f(-5) = 3.846154e-02
% f(5) = 3.846154e-02
% f(-4.750000e+00) = -3.995245e+01
% f(-4.250000e+00) = 3.454958e+00
% f(3.750000e+00) = -4.470520e-01
% f(4.250000e+00) = 3.454958e+00
output_p1_b_20 = output;

% |f(x) - p1(x)|
diff_p1_b_20 = output_p1_b_20(:, 2) - f_b_20';

% p2(x)
for i = 1:n+1
  w_b(i) = (-1)^(i-1) * nchoosek(n, (i-1));
end
Barycentric_interpolation_P4; %n, x6_b_20, x_b_20, y_b_20, w_b
% f(-5) = 3.846154e-02
% f(5) = 3.846154e-02
% f(-4.500000e+00) = 1.578721e+00
% f(-3.500000e+00) = -2.261963e-01
% f(2.500000e+00) = 2.537555e-01
% f(3.500000e+00) = -2.261963e-01
output_p2_b_20 = output;

% |f(x) - p2(x)|
diff_p2_b_20 = output_p2_b_20(:, 2) - f_b_20';

% Plot of functions
Horners_Rule_P2; %n, x_b_20, y_b_20, linspace(-5, 5)
p1_b_20_points = output;

Barycentric_interpolation_P4; %n, linspace(-5, 5), x_b_20, y_b_20, w_b
p2_b_20_points = output;

f = @(x) 1./(1+x.^2);

figure
plot(linspace(-5, 5), f(linspace(-5, 5)), 'k', ...
  linspace(-5, 5), p1_b_20_points(:, 2), 'o', ...
  linspace(-5, 5), p2_b_20_points(:, 2), 'x');
title('Part b, n = 20')
xlabel('-5 \leq x \leq 5')
legend('y = f(x)','y = p^{(1)}_n(x)','y = p^{(2)}_n(x)','Location','south')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

n = 40;
for i = 1:(n+1)
  x_b_40(i) = -5 + (10/n)*(i-1);
end

for i = 1:(n+1)
  y_b_40(i) = 1 / (1 + x_b_40(i)^2);
end

x6_b_40 = [-5, 5, -5 + (5/n)*(2*(1)-1), -5 + (5/n)*(2*(2)-1), ...
  -5 + (5/n)*(2*(n-2)-1), -5 + (5/n)*(2*(n-1)-1)];

% f(x)
f_b_40 = zeros(1, 6);
for i = 1:6
  f_b_40(i) = 1 / (1+x6_b_40(i)^2);
end

% p1(x) Horner's Rule
Horners_Rule_P2; %n, x_b_40, y_b_40, x6_b_40
% f(-5) = 3.846154e-02
% f(5) = 3.783540e-02
% f(-4.875000e+00) = -5.740918e+04
% f(-4.625000e+00) = 2.287728e+03
% f(4.375000e+00) = -1.561698e+02
% f(4.625000e+00) = 2.287728e+03
output_p1_b_40 = output;

% |f(x) - p1(x)|
diff_p1_b_40 = output_p1_b_40(:, 2) - f_b_40';

% p2(x)
for i = 1:n+1
  w_b(i) = (-1)^(i-1) * nchoosek(n, (i-1));
end
Barycentric_interpolation_P4; %n, x6_b_40, x_b_40, y_b_40, w_b
% f(-5) = 3.846154e-02
% f(5) = 3.846154e-02
% f(-4.875000e+00) = -5.740918e+04
% f(-4.625000e+00) = 2.287728e+03
% f(4.375000e+00) = -1.561697e+02
% f(4.625000e+00) = 2.287728e+03
output_p2_b_40 = output;

% |f(x) - p2(x)|
diff_p2_b_40 = output_p2_b_40(:, 2) - f_b_40';

% Plot of functions
Horners_Rule_P2; %n, x_b_40, y_b_40, linspace(-5, 5)
p1_b_40_points = output;

Barycentric_interpolation_P4; %n, linspace(-5, 5), x_b_40, y_b_40, w_b
p2_b_40_points = output;

f = @(x) 1./(1+x.^2);

figure
plot(linspace(-5, 5), f(linspace(-5, 5)), 'k', ...
  linspace(-5, 5), p1_b_40_points(:, 2), 'o', ...
  linspace(-5, 5), p2_b_40_points(:, 2), 'x');
title('Part b, n = 40')
xlabel('-5 \leq x \leq 5')
legend('y = f(x)','y = p^{(1)}_n(x)','y = p^{(2)}_n(x)','Location','south')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Part (c)
n = 5;
for i = 1:(n+1)
  x_c_5(i) = 5*cos(pi*(n-(i-1))/n);
end

for i = 1:(n+1)
  y_c_5(i) = 1 / (1 + x_c_5(i)^2);
end

x6_c_5 = [-5, 5, -5 + (5/n)*(2*(1)-1), -5 + (5/n)*(2*(2)-1), ...
  -5 + (5/n)*(2*(n-2)-1), -5 + (5/n)*(2*(n-1)-1)];

% f(x)
f_c_5 = zeros(1, 6);
for i = 1:6
  f_c_5(i) = 1 / (1+x6_c_5(i)^2);
end

% p1(x) Horner's Rule
Horners_Rule_P2; %n, x_c_5, y_c_5, x6_c_5
% f(-5) = 3.846154e-02
% f(5) = 3.846154e-02
% f(-4) = 6.053298e-02
% f(-2) = 2.547617e-01
% f(0) = 3.613586e-01
% f(2) = 2.547617e-01
output_p1_c_5 = output;

% |f(x) - p1(x)|
diff_p1_c_5 = output_p1_c_5(:, 2) - f_c_5';

% p2(x)
w_c(1) = (-1)^0 * (1/2);
w_c(n+1) = (-1)^(n+1) * (1/2);
for i = 2:n
  w_c(i) = (-1)^(i-1);
end
Barycentric_interpolation_P4; %n, x6_c_5, x_c_5, y_c_5, w_c
% f(-5) = 3.846154e-02
% f(5) = 3.846154e-02
% f(-4) = 6.042195e-02
% f(-2) = 2.422783e-01
% f(0) = 4.420829e-01
% f(2) = 2.277151e-01
output_p2_c_5 = output;

% |f(x) - p2(x)|
diff_p2_c_5 = output_p2_c_5(:, 2) - f_c_5';

% Plot of functions
Horners_Rule_P2; %n, x_c_5, y_c_5, linspace(-5, 5)
p1_c_5_points = output;

Barycentric_interpolation_P4; %n, linspace(-5, 5), x_c_5, y_c_5, w_c
p2_c_5_points = output;

f = @(x) 1./(1+x.^2);

figure
plot(linspace(-5, 5), f(linspace(-5, 5)), 'k', ...
  linspace(-5, 5), p1_c_5_points(:, 2), 'o', ...
  linspace(-5, 5), p2_c_5_points(:, 2), 'x');
title('Part c, n = 5')
xlabel('-5 \leq x \leq 5')
legend('y = f(x)','y = p^{(1)}_n(x)','y = p^{(2)}_n(x)','Location','northeast')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

n = 10;
for i = 1:(n+1)
  x_c_10(i) = 5*cos(pi*(n-(i-1))/n);
end

for i = 1:(n+1)
  y_c_10(i) = 1 / (1 + x_c_10(i)^2);
end

x6_c_10 = [-5, 5, -5 + (5/n)*(2*(1)-1), -5 + (5/n)*(2*(2)-1), ...
  -5 + (5/n)*(2*(n-2)-1), -5 + (5/n)*(2*(n-1)-1)];

% f(x)
f_c_10 = zeros(1, 6);
for i = 1:6
  f_c_10(i) = 1 / (1+x6_c_10(i)^2);
end

% p1(x) Horner's Rule
Horners_Rule_P2; %n, x_c_10, y_c_10, x6_c_10
% f(-5) = 3.846154e-02
% f(5) = 3.846154e-02
% f(-4.500000e+00) = 2.227578e-02
% f(-3.500000e+00) = 1.269137e-01
% f(2.500000e+00) = 6.705169e-02
% f(3.500000e+00) = 1.269137e-01
output_p1_c_10 = output;

% |f(x) - p1(x)|
diff_p1_c_10 = output_p1_c_10(:, 2) - f_c_10';

% p2(x)
w_c(1) = (-1)^0 * (1/2);
w_c(n+1) = (-1)^(n+1) * (1/2);
for i = 2:n
  w_c(i) = (-1)^(i-1);
end
Barycentric_interpolation_P4; %n, x6_c_10, x_c_10, y_c_10, w_c
% f(-5) = 3.846154e-02
% f(5) = 3.846154e-02
% f(-4.500000e+00) = 2.190365e-02
% f(-3.500000e+00) = 1.233649e-01
% f(2.500000e+00) = 6.332254e-02
% f(3.500000e+00) = 1.543669e-01
output_p2_c_10 = output;

% |f(x) - p2(x)|
diff_p2_c_10 = output_p2_c_10(:, 2) - f_c_10';

% Plot of functions
Horners_Rule_P2; %n, x_c_10, y_c_10, linspace(-5, 5)
p1_c_10_points = output;

Barycentric_interpolation_P4; %n, linspace(-5, 5), x_c_10, y_c_10, w_c
p2_c_10_points = output;

f = @(x) 1./(1+x.^2);

figure
plot(linspace(-5, 5), f(linspace(-5, 5)), 'k', ...
  linspace(-5, 5), p1_c_10_points(:, 2), 'o', ...
  linspace(-5, 5), p2_c_10_points(:, 2), 'x');
title('Part c, n = 10')
xlabel('-5 \leq x \leq 5')
legend('y = f(x)','y = p^{(1)}_n(x)','y = p^{(2)}_n(x)','Location','northeast')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

n = 20;
for i = 1:(n+1)
  x_c_20(i) = 5*cos(pi*(n-(i-1))/n);
end

for i = 1:(n+1)
  y_c_20(i) = 1 / (1 + x_c_20(i)^2);
end

x6_c_20 = [-5, 5, -5 + (5/n)*(2*(1)-1), -5 + (5/n)*(2*(2)-1), ...
  -5 + (5/n)*(2*(n-2)-1), -5 + (5/n)*(2*(n-1)-1)];

% f(x)
f_c_20 = zeros(1, 6);
for i = 1:6
  f_c_20(i) = 1 / (1+x6_c_20(i)^2);
end

% p1(x) Horner's Rule
Horners_Rule_P2; %n, x_c_20, y_c_20, x6_c_20
% f(-5) = 3.846154e-02
% f(5) = 3.846154e-02
% f(-4.750000e+00) = 4.228250e-02
% f(-4.250000e+00) = 5.676928e-02
% f(3.750000e+00) = 6.061946e-02
% f(4.250000e+00) = 5.676928e-02
output_p1_c_20 = output;

% |f(x) - p1(x)|
diff_p1_c_20 = output_p1_c_20(:, 2) - f_c_20';

% p2(x)
w_c(1) = (-1)^0 * (1/2);
w_c(n+1) = (-1)^(n+1) * (1/2);
for i = 2:n
  w_c(i) = (-1)^(i-1);
end
Barycentric_interpolation_P4; %n, x6_c_20, x_c_20, y_c_20, w_c
% f(-5) = 3.846154e-02
% f(5) = 3.846154e-02
% f(-4.750000e+00) = 4.228042e-02
% f(-4.250000e+00) = 5.703234e-02
% f(3.750000e+00) = 6.380443e-02
% f(4.250000e+00) = 5.404650e-02
output_p2_c_20 = output;

% |f(x) - p2(x)|
diff_p2_c_20 = output_p2_c_20(:, 2) - f_c_20';

% Plot of functions
Horners_Rule_P2; %n, x_c_20, y_c_20, linspace(-5, 5)
p1_c_20_points = output;

Barycentric_interpolation_P4; %n, linspace(-5, 5), x_c_20, y_c_20, w_c
p2_c_20_points = output;

f = @(x) 1./(1+x.^2);

figure
plot(linspace(-5, 5), f(linspace(-5, 5)), 'k', ...
  linspace(-5, 5), p1_c_20_points(:, 2), 'o', ...
  linspace(-5, 5), p2_c_20_points(:, 2), 'x');
title('Part c, n = 20')
xlabel('-5 \leq x \leq 5')
legend('y = f(x)','y = p^{(1)}_n(x)','y = p^{(2)}_n(x)','Location','northeast')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

n = 40;
for i = 1:(n+1)
  x_c_40(i) = 5*cos(pi*(n-(i-1))/n);
end

for i = 1:(n+1)
  y_c_40(i) = 1 / (1 + x_c_40(i)^2);
end

x6_c_40 = [-5, 5, -5 + (5/n)*(2*(1)-1), -5 + (5/n)*(2*(2)-1), ...
  -5 + (5/n)*(2*(n-2)-1), -5 + (5/n)*(2*(n-1)-1)];

% f(x)
f_c_40 = zeros(1, 6);
for i = 1:6
  f_c_40(i) = 1 / (1+x6_c_40(i)^2);
end

% p1(x) Horner's Rule
Horners_Rule_P2; %n, x_c_40, y_c_40, x6_c_40
% f(-5) = 3.846154e-02
% f(5) = 3.846726e-02
% f(-4.875000e+00) = 4.036504e-02
% f(-4.625000e+00) = 4.465517e-02
% f(4.375000e+00) = 4.958004e-02
% f(4.625000e+00) = 4.465637e-02
output_p1_c_40 = output;

% |f(x) - p1(x)|
diff_p1_c_40 = output_p1_c_40(:, 2) - f_c_40';

% p2(x)
w_c(1) = (-1)^0 * (1/2);
w_c(n+1) = (-1)^(n+1) * (1/2);
for i = 2:n
  w_c(i) = (-1)^(i-1);
end
Barycentric_interpolation_P4; %n, x6_c_40, x_c_40, y_c_40, w_c
% f(-5) = 3.846154e-02
% f(5) = 3.846154e-02
% f(-4.875000e+00) = 4.036266e-02
% f(-4.625000e+00) = 4.465159e-02
% f(4.375000e+00) = 5.074360e-02
% f(4.625000e+00) = 4.474854e-02
output_p2_c_40 = output;

% |f(x) - p2(x)|
diff_p2_c_40 = output_p2_c_40(:, 2) - f_c_40';

% Plot of functions
Horners_Rule_P2; %n, x_c_40, y_c_40, linspace(-5, 5)
p1_c_40_points = output;

Barycentric_interpolation_P4; %n, linspace(-5, 5), x_c_40, y_c_40, w_c
p2_c_40_points = output;

f = @(x) 1./(1+x.^2);

figure
plot(linspace(-5, 5), f(linspace(-5, 5)), 'k', ...
  linspace(-5, 5), p1_c_40_points(:, 2), 'o', ...
  linspace(-5, 5), p2_c_40_points(:, 2), 'x');
title('Part c, n = 40')
xlabel('-5 \leq x \leq 5')
legend('y = f(x)','y = p^{(1)}_n(x)','y = p^{(2)}_n(x)','Location','northeast')
