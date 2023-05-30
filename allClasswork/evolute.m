function retval = evolute (x, y, t)
  h = 1e-4;
  dfx = @(t) (x(t + h) - x(t)) / h;
  dfy = @(t) (y(t + h) - y(t)) / h;
  d2fx = @(t) (dfx(t + h) - dfx(t)) / h;
  d2fy = @(t) (dfy(t + h) - dfy(t)) / h;
  X1 = x(t) - dfy(t) .* (((dfx(t)).^2 + (dfy(t)).^2) ./ (dfx(t) .* d2fy(t) - d2fx(t) .* dfy(t)));
  Y1 = y(t) + dfx(t) .* (((dfx(t)).^2 + (dfy(t)).^2) ./ (dfx(t) .* d2fy(t) - d2fx(t) .* dfy(t)));
  plot(x(t), y(t));
  hold on;
  comet(X1, Y1);
endfunction
