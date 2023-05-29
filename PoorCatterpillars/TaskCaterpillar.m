n = 5; #количество кружочков
border = 0;
R = 0.93;
t = border-2*pi:0.01*pi:border;



#circPlot = plot(x(t), y(t));
axis equal;
hold on;


n0 = 1;

sinPlotX = @(t2) t2;
sinPlotY = @(t2) sin(t2);

x = @(t) R .* sin(t) + sinPlotX(t2(n0));
y = @(t) R .* cos(t) + sinPlotY(t2(n0));
h = plot(0, 0);

while border <= 4*pi
  t = border-2*pi:0.01*pi:border;
  t2 = border:pi/2:n*pi+border;
  X1 = zeros(1, length(t));
  Y1 = zeros(1, length(t));
  i = 1:length(t);
  while n0 <= n
    x = @(t) R .* sin(t) + sinPlotX(t2(n0));
    y = @(t) R .* cos(t) + sinPlotY(t2(n0));
    plot(x(t), y(t));
    n0 += 1;
    X1(i) = x(t);
    Y1(i) = y(t);
  endwhile
  set(h, 'XData', X1, 'YData', Y1);
  drawnow
  border += 0.01*pi;
  n0 = 1;
endwhile

