#pkg load symbolic;
##syms x
##f = 1 + (1 + sin(x) - cos(x)).^2 - (sin(2*x) - cos(2*x) - 0.2)^2
f = @(x) 1 + (1 + sin(x) - cos(x)).^2 - (sin(2*x) - cos(2*x) - 0.2).^2;
x = -3*pi:0.1*pi:3*pi;
plot(x, f(x));
eps = 1e-10;
h = 0.00005;
x0 = 0;
fdif = (f(x0 + h) - f(x0)) / h;
xprev = x0;
xn = x0 - (f(x0) / fdif);

iter = 1;

while (abs(xn - xprev) > eps)
  xprev = xn;
  fdif = (f(xn + h) - f(xn)) / h;
  xn = xn - (f(xn) / fdif);
  iter += 1;
endwhile
xn
iter

