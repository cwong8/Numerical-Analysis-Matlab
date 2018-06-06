% Program tests
% clear
format long e

% cd 'C:\Users\Christopher\Desktop\MAT 128B\Project 1';

%%% Problem 1
% KTOL = 1000000
% FTOL = XTOL = 10^-15

% Part (a)
% f(x) = x + log(x)
% f'(x) = 1 + (1/x)
REGFAL; % a0 = 0.5, b0 = 1
% All digits of x_k and f(x_k)
% c(numel(c))
% fc
SECANT; % x0 = 0.5, x1 = 1
% All digits of x_k and f(x_k)
% x(numel(x))
% fx
NEWTON; % x0 = 1
% All digits of x_k and f(x_k)
% x(numel(x))
% fx

% Part (b)
% f(x) = 1 - 10*x + 0.01*exp(x)
% f'(x) = -10 + 0.01*exp(x)
REGFAL; % a0 = 5, b0 = 20
% All digits of x_k and f(x_k)
% c(numel(c))
% fc
SECANT; % x0 = 5, x1 = 20
% All digits of x_k and f(x_k)
% x(numel(x))
% fx
NEWTON; % x0 = 20
% All digits of x_k and f(x_k)
% x(numel(x))
% fx

% Part (c)
% f(x) = x^2 - 2*x*exp(-x) + exp(-2*x)
% f'(x) = 2*x + 2*x*exp(-x) - 2*exp(-x) - 2*exp(-2*x)
NEWTON; % x0 = 1
% All digits of x_k and f(x_k)
% x(numel(x))
% fx

% Part (d)
% f(x) = atan(x) - (2*x)/(1+x^2)
% f'(x) = ((3*x^2)-1)/((1+x^2)^2)
REGFAL; % a0 = 1, b0 = 2
% All digits of x_k and f(x_k)
% c(numel(c))
% fc
zero_regfal = c(numel(c));
SECANT; % x0 = 1, x1 = 2
% All digits of x_k and f(x_k)
% x(numel(x))
% fx
zero_secant = x(numel(x));
NEWTON; % x0 = 1
% All digits of x_k and f(x_k)
% x(numel(x))
% fx
zero_newton = x(numel(x));
% The zero from the secant method has the same 16 digits but does not
% register as equal to zero_regfal and zero_newton...

zero = zero_newton;

% Part (e)
% f(x) = atan(x)
% f'(x) = 1/(1+x^2)
NEWTON; % x0 = zero
% Does not seem to work for this initial value. DIVERGENCE!!

% Part (f)
% f(x) = atan(x)
% f'(x) = 1/(1+x^2)
NEWTON; % x0 = 1
% All digits of x_k and f(x_k)
% x(numel(x))
% fx
NEWTON; % x0 = 5
% All digits of x_k and f(x_k)
% x(numel(x))
% fx
NEWTON; % x0 = 50
% All digits of x_k and f(x_k)
% x(numel(x))
% fx
NEWTON; % x0 = 100
% All digits of x_k and f(x_k)
% x(numel(x))
% fx

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Problem 2
% Part (a)
% f(x) = atan(x) - (2*x)/(1+x^2)
% f'(x) = ((3*x^2)-1)/((1+x^2)^2)
NEWTON; % x0 = -40
NEWTON; % x0 = -30
NEWTON; % x0 = -5
NEWTON; % x0 = 10
NEWTON; % x0 = 20
% All digits of x_k and f(x_k)
% x(numel(x))
% fx

NEWTON_DAMPING; % x0 = -40
NEWTON_DAMPING; % x0 = -30
NEWTON_DAMPING; % x0 = -5
NEWTON_DAMPING; % x0 = 10
NEWTON_DAMPING; % x0 = 20
% All digits of x_k and f(x_k)
% x(numel(x))
% fx

% Part (b)
% f(x) = (1-x)/(1+x)
% f'(x) = -2/(1+x)^2
NEWTON; % x0 = 2
NEWTON; % x0 = 5
NEWTON; % x0 = 10
NEWTON; % x0 = 100
% All digits of x_k and f(x_k)
% x(numel(x))
% fx

NEWTON_DAMPING; % x0 = 2
NEWTON_DAMPING; % x0 = 5
NEWTON_DAMPING; % x0 = 10
NEWTON_DAMPING; % x0 = 100
% All digits of x_k and f(x_k)
% x(numel(x))
% fx
