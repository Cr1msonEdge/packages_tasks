function retval = newtonHalfVis(f, x0, a, b, epsilon)
  x = x0 + epsilon;
  #x = [-1 : 0.01 : 100]
  t = (-1:0.1:10);

  Y = f(t);
  prevX = x0;
  g = plot(t, Y);
  hold on;
  axis equal;
  while abs(f(x0)) > epsilon
    prevX = x0;
    plot(t, f(x0) + (t - x0) .* diff(@f, x, x0);
    x0 = x0 - f(x0) / diff(@f, x, x0);
    #согласно методу половинного деления
    while x0 < a || x0 > b
      x0 = (x0 + prevX) / 2;
    endwhile
  endwhile
  retval = x0;
endfunction
