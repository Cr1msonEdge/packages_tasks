function result = myDiff(f, x0, epsilon)
  result = (f(x0 + epsilon) - f(x0)) ./ epsilon;
endfunction
