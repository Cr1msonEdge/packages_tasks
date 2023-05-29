function retval = evolvent (x, y, t)
  h = 1e-4;
  dfx = @(t) (x(t + h) - x(t)) / h;
  dfy = @(t) (y(t + h) - y(t)) / h;
  a1 = 0;
  someFunc = @(t) sqrt((dfx(t)) .^ 2 + (dfy(t)) .^ 2);
  integr = @(t) ((t - a1) ./ 6) .* (someFunc(a1) + 4 * someFunc((a1 + t) / 2) + someFunc(t));
  X3 = x(t) - dfx(t) .* integr(t) ./ someFunc(t);
  Y3 = y(t) - dfy(t) .* integr(t) ./ someFunc(t);
  plot(x(t), y(t));
  hold on;
  comet(X3, Y3)
endfunction
