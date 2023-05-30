function result = newtonHalf(f, x0, a, b, epsilon)
  df = 0;
  prevX = x0;
  #f(x) = ..


  while abs(f(x0)) > eps

    prevX = x0;
    x0 = x0 - f(x0) / diff(@f, x, x0);
    while x0 < a || x0 > b
      x0 = (x0 + prevX) / 2;

    endwhile
    x = x0 + epsilon;
  endwhile
  result = x0;
endfunction
