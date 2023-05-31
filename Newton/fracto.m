function fracto(equation, xBorder, yBorder, dotsX, dotsY)
  res = roots(equation);
  epsilon = 1e-3;

  sz = length(res);
  # [X, Y] = grid(xTemp, yTemp)
  xTemp = linspace(xBorder(1), xBorder(2), dotsX);
  yTemp = linspace(yBorder(1), yBorder(2), dotsY);
  X = xTemp;
  Y = yTemp;

  [X, Y] = meshgrid(X, Y);
  f = @(x) getFunc(equation, x);
  zn = newtons(f, X + i*Y);


  xLim = size(zn)(1);
  yLim = size(zn)(2);

  zMatrix = zeros(xLim, yLim);
  for k = 1:sz
    zMatrix += (abs(zn - res(k)) < epsilon) * k;
  endfor


  map = [1 0 0; 0 1 0; 0 0 1; 1 1 0; 1 0 1; 0 1 1];
  colormap(map);
  image(xBorder, yBorder, zMatrix);
endfunction
