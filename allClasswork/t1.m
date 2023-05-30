roots([1 0 0 -1]);
f = @(z) z.^3 - 1;
x = -2:0.01:2;
#y = 0.1 : 0.001 : 10;
#z = x + y*i;
#y = z .+ x
#plot(z, f(z));
eps = 1e-3;
h = 0.00005;
counter = 0;
Z = [];
for k = (x + x*i)
  z0 = k;
  #fdif = (f(z0 + h) - f(z0)) / h;
  fdif = @(z) 3 .* z^2;
  zprev = z0;
  zn = z0 - (f(z0) / fdif(z0));

  iter = 1;

  while (abs(zn - zprev) > eps)
    zprev = zn;
    zn = zn - (f(zn) / fdif(zn));
    iter += 1;
  endwhile
  figure;
  map = [1 0 0; 0 1 0; 0 0 1; 0 0 0];
  colormap(map);

  Z1 = abs(zn - (-0.5 - 0.866*i)) <= eps;
  Z2 = abs(zn - (-0.5 + 0.866*i)) <= eps;
  Z3 = abs(zn - 1) <= eps;
  Z4 = ~(Z1 + Z2 + Z3);
  Z = (Z1 + 2*Z2 + 3*Z3 + 4*Z4);


  zn;
  iter;
  counter += 1;
  if (counter == 5)
    break;
  endif
##  if (abs(zn - (-0.5 - 0.866*i)) <= 1e-6)
##    image(x, x, 'red');
##  elseif (abs(zn - (-0.5 + 0.866*i)) <= 1e-6)
##   image(x, x, 'blue');
##  elseif(abs(zn - 1) <= 1e-6)
##   image(x, x, 'green');
##  endif
endfor
subplot (2,2,1);
h = image([-2 2], [-2 2], Z)
title("asd")
