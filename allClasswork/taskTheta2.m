function dthetadt = taskTheta2 (t, theta)
  L = 4;
  dthetadt(1) = theta(2);
  dthetadt(2) = -(9.8/L) .* sin(theta(1));
  dthetadt = dthetadt'
endfunction
