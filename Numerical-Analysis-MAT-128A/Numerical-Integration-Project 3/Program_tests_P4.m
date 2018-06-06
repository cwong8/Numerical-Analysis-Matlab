% Problem 4
% clear
format long e

% cd 'C:\Users\Christopher\Desktop\MAT 128A\Project 3';

%%%%% Error function f(x) = 2*exp(-x^2)/sqrt(pi) %%%%%

%%% Composite trapezoidal rule
b_eval = 0.4:0.4:2.0;
% a = 0, b_eval = 0.4, 0.8, 1.2, 1.6, 2.0
exact_integral = erf(b_eval);
tol = 10^-12;
j_max = 10^6;

Composite_trapezoidal_rule_P1; %[0, b_eval(1)], 2*exp(-x^2)/sqrt(pi), tol, j_max
output_t_b1 = output;
% Final approximation: 4.283924e-01
% Conservative error estimate: 5.962638e-13
abs(exact_integral(1) - output_t_b1(1));
% 1.481592626362271e-13
% Final iteration index: 18
% Number of function evaluations: 262145

Composite_trapezoidal_rule_P1; %[0, b_eval(2)], 2*exp(-x^2)/sqrt(pi), tol, j_max
output_t_b2 = output;
% Final approximation: 7.421010e-01
% Conservative error estimate: 7.346716e-13
abs(exact_integral(2) - output_t_b2(1));
% 1.859623566247137e-13
% Final iteration index: 19
% Number of function evaluations: 524289

Composite_trapezoidal_rule_P1; %[0, b_eval(3)], 2*exp(-x^2)/sqrt(pi), tol, j_max
output_t_b3 = output;
% Final approximation: 9.103140e-01
% Conservative error estimate: 2.837730e-13
abs(exact_integral(3) - output_t_b3(1));
% 6.272760089132135e-14
% Final iteration index: 20
% Number of function evaluations: 1048577

Composite_trapezoidal_rule_P1; %[0, b_eval(4)], 2*exp(-x^2)/sqrt(pi), tol, j_max
output_t_b4 = output;
% Final approximation: 9.763484e-01
% Conservative error estimate: 8.668621e-13
abs(exact_integral(4) - output_t_b4(1));
% 2.191580250610059e-13
% Final iteration index: 19
% Number of function evaluations: 524289

Composite_trapezoidal_rule_P1; %[0, b_eval(5)], 2*exp(-x^2)/sqrt(pi), tol, j_max
output_t_b5 = output;
% Final approximation: 9.953223e-01
% Conservative error estimate: 3.976079e-13
abs(exact_integral(5) - output_t_b5(1));
% 1.002531391236516e-13
% Final iteration index: 19
% Number of function evaluations: 524289

%%% Composite Simpson's rule
b_eval = 0.4:0.4:2.0;
% a = 0, b_eval(1) = 0.4
exact_integral = erf(b_eval);
tol = 10^-12;
j_max = 10^6;

Composite_Simpsons_rule_P2; %[0, b_eval(1)], 2*exp(-x^2)/sqrt(pi), tol, j_max
output_s_b1 = output;
% Final approximation: 4.283924e-01
% Conservative error estimate: 1.364242e-13
abs(exact_integral(1) - output_s_b1(1));
% 8.604228440844963e-15
% Final iteration index: 8
% Number of function evaluations: 513

Composite_Simpsons_rule_P2; %[0, b_eval(2)], 2*exp(-x^2)/sqrt(pi), tol, j_max
output_s_b2 = output;
% Final approximation: 7.421010e-01
% Conservative error estimate: 1.080025e-13
abs(exact_integral(2) - output_s_b2(1));
% 7.105427357601002e-15
% Final iteration index: 9
% Number of function evaluations: 1025

Composite_Simpsons_rule_P2; %[0, b_eval(3)], 2*exp(-x^2)/sqrt(pi), tol, j_max
output_s_b3 = output;
% Final approximation: 9.103140e-01
% Conservative error estimate: 4.121148e-13
abs(exact_integral(3) - output_s_b3(1));
% 2.664535259100376e-14
% Final iteration index: 8
% Number of function evaluations: 513

Composite_Simpsons_rule_P2; %[0, b_eval(4)], 2*exp(-x^2)/sqrt(pi), tol, j_max
output_s_b4 = output;
% Final approximation: 9.763484e-01
% Conservative error estimate: 6.271724e-13
abs(exact_integral(4) - output_s_b4(1));
% 3.830269434956790e-14
% Final iteration index: 9
% Number of function evaluations: 1025

Composite_Simpsons_rule_P2; %[0, b_eval(5)], 2*exp(-x^2)/sqrt(pi), tol, j_max
output_s_b5 = output;
% Final approximation: 9.953223e-01
% Conservative error estimate: 6.608047e-14
abs(exact_integral(5) - output_s_b5(1));
% 3.885780586188048e-15
% Final iteration index: 10
% Number of function evaluations: 2049

%%% Not-a-knot cubic spline integration
% Equally-spaced points
n(1) = output_s_b1(4) - 1;
x_equal_b1 = linspace(0, b_eval(1), n(1));
NotAKnot_cubic_spline_integral_P3; %x_equal_b1, 2.*exp(-x.^2)./sqrt(pi)
I_spline_b1 = I_spline;
abs(exact_integral(1) - I_spline_b1);
% 1.831867990631508e-15

n(2) = output_s_b2(4) - 1;
x_equal_b2 = linspace(0, b_eval(2), n(2));
NotAKnot_cubic_spline_integral_P3; %x_equal_b2, 2.*exp(-x.^2)./sqrt(pi)
I_spline_b2 = I_spline;
abs(exact_integral(2) - I_spline_b2);
% 1.110223024625157e-15

n(3) = output_s_b3(4) - 1;
x_equal_b3 = linspace(0, b_eval(3), n(3));
NotAKnot_cubic_spline_integral_P3; %x_equal_b3, 2.*exp(-x.^2)./sqrt(pi)
I_spline_b3 = I_spline;
abs(exact_integral(3) - I_spline_b3);
% 8.215650382226158e-15

n(4) = output_s_b4(4) - 1;
x_equal_b4 = linspace(0, b_eval(4), n(4));
NotAKnot_cubic_spline_integral_P3; %x_equal_b4, 2.*exp(-x.^2)./sqrt(pi)
I_spline_b4 = I_spline;
abs(exact_integral(4) - I_spline_b4);
% 7.549516567451065e-15

n(5) = output_s_b5(4) - 1;
x_equal_b5 = linspace(0, b_eval(5), n(5));
NotAKnot_cubic_spline_integral_P3; %x_equal_b5, 2.*exp(-x.^2)./sqrt(pi)
I_spline_b5 = I_spline;
abs(exact_integral(5) - I_spline_b5);
% 2.220446049250313e-16

% Chebyshev points
for i = 1:(n(1)+1)
  x_cheb_b1(i) = (1/2)*(b_eval(1)+b_eval(1)*cos(pi*(i-1)/(n(1))));
end
NotAKnot_cubic_spline_integral_P3; %fliplr(x_cheb_b1), 2.*exp(-x.^2)./sqrt(pi)
I_spline_b1_cheb = I_spline;
abs(exact_integral(1) - I_spline_b1_cheb);
% 9.214851104388799e-15

for i = 1:(n(2)+1)
  x_cheb_b2(i) = (1/2)*(b_eval(2)+b_eval(2)*cos(pi*(i-1)/(n(2))));
end
NotAKnot_cubic_spline_integral_P3; %fliplr(x_cheb_b2), 2.*exp(-x.^2)./sqrt(pi)
I_spline_b2_cheb = I_spline;
abs(exact_integral(2) - I_spline_b2_cheb);
% 6.217248937900877e-15

for i = 1:(n(3)+1)
  x_cheb_b3(i) = (1/2)*(b_eval(3)+b_eval(3)*cos(pi*(i-1)/(n(3))));
end
NotAKnot_cubic_spline_integral_P3; %fliplr(x_cheb_b3), 2.*exp(-x.^2)./sqrt(pi)
I_spline_b3_cheb = I_spline;
abs(exact_integral(3) - I_spline_b3_cheb);
% 2.803313137178520e-13

for i = 1:(n(4)+1)
  x_cheb_b4(i) = (1/2)*(b_eval(4)+b_eval(4)*cos(pi*(i-1)/(n(4))));
end
NotAKnot_cubic_spline_integral_P3; %fliplr(x_cheb_b4), 2.*exp(-x.^2)./sqrt(pi)
I_spline_b4_cheb = I_spline;
abs(exact_integral(4) - I_spline_b4_cheb);
% 1.616484723854228e-13

for i = 1:(n(5)+1)
  x_cheb_b5(i) = (1/2)*(b_eval(5)+b_eval(5)*cos(pi*(i-1)/(n(5))));
end
NotAKnot_cubic_spline_integral_P3; %fliplr(x_cheb_b5), 2.*exp(-x.^2)./sqrt(pi)
I_spline_b5_cheb = I_spline;
abs(exact_integral(5) - I_spline_b5_cheb);
% 3.741451592986778e-14

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%% Function f(x) = 2/(1+x^2) %%%%%

%%% Composite trapezoidal rule
% a = -1, b = 1
exact_integral = pi;
tol = 10^-12;
j_max = 10^6;

Composite_trapezoidal_rule_P1; %[-1, 1], 2/(1+x^2), tol, j_max
output_t_f2 = output;
% Final approximation: 3.141593e+00
% Conservative error estimate: 5.980401e-13
abs(exact_integral - output_t_f2(1));
% 1.518785097687214e-13
% Final iteration index: 21
% Number of function evaluations: 2097153

%%% Composite Simpson's rule
Composite_Simpsons_rule_P2; %[-1, 1], 2/(1+x^2), tol, j_max
output_s_f2 = output;
% Final approximation: 3.141593e+00
% Conservative error estimate: 6.077509e-13
abs(exact_integral - output_s_f2(1));
% 8.437694987151190e-15
% Final iteration index: 7
% Number of function evaluations: 257

%%% Not-a-knot cubic spline integration
% Equally-spaced points
n = output_s_f2(4) - 1;
x_equal = linspace(-1, 1, n);
NotAKnot_cubic_spline_integral_P3; %x_equal, 2./(1+x.^2)
I_spline_f2 = I_spline;
abs(exact_integral - I_spline_f2);
% 6.059552859483119e-11

for i = 1:(n+1)
  x_cheb(i) = cos(pi*(i-1)/(n));
end
NotAKnot_cubic_spline_integral_P3; %fliplr(x_cheb), 2./(1+x.^2)
I_spline_f2_cheb = I_spline;
abs(exact_integral - I_spline_f2_cheb);
% 3.456204211715885e-10
