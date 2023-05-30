n = 1; #количество кружочков
border = 2;
aborder = 0;
R = 0.93;

xmax = 12;
ymax = 12;

#надо



#circPlot = plot(x(t), y(t));
axis equal;
hold on;

leave = false;

n0 = 1;
a = -1; b = -4;

x0 = 0;
y0 = 0;

trajectoryPlotX = @(t2, x0, a) x0 + a*t2;
trajectoryPlotY = @(t2, y0, b) y0 + b*t2;



##plot(0, 0);
hold on
plot([-xmax, xmax, xmax, -xmax, -xmax], [-ymax, -ymax, ymax, ymax, -ymax]);
axis equal


while (true)
  t = 0:0.01*pi:2*pi;
  t2 = aborder:(border-aborder)/(n):border;
  i = 1:length(t);
  while n0 <= n
    x = @(t) R .* sin(t) + trajectoryPlotX(aborder, x0, a);
    y = @(t) R .* cos(t) + trajectoryPlotY(aborder, y0, b);
    plot(x(t), y(t));
    n0 += 1;
    hold on;
  endwhile
  drawnow
  border += 0.01*pi;
  aborder += 0.01*pi;
  n0 = 1;
  #trajectoryPlotX(border, x0, a)
  if R + trajectoryPlotX(aborder, x0, a) >= xmax
    x0 = xmax - R;
    y0 = trajectoryPlotY(aborder, y0, b);
    aborder = 0;
    border = 2;
    a *= -1;
  endif
  if -R + trajectoryPlotX(aborder, x0, a) < -xmax
    x0 = -xmax + R;
    y0 = trajectoryPlotY(aborder, y0, b);
    aborder = 0;
    border = 2;
    a *= -1;
  endif
  if R + trajectoryPlotY(aborder, y0, b) > ymax
    x0 = trajectoryPlotX(aborder, x0, a);
    y0 = ymax - R;
    aborder = 0;
    border = 2;
    b *= -1;
  endif
  if -R + trajectoryPlotY(aborder, y0, b) < -ymax
    x0 = trajectoryPlotX(aborder, x0, a);
    y0 = -ymax + R;
    aborder = 0;
    border = 2;
    b *= -1;
  endif
endwhile




