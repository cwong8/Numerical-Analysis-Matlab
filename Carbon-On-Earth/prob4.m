function dx = prob4(t,x)
dx(1) = -2*x(1) + 3*x(2);
dx(2) = -x(1) + 2*x(2);
dx = dx(:);
end