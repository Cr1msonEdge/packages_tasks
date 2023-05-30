T = 0:0.002*pi:2*pi;
a = 3; b = 2;
x = @(t) a .* cos(t);
y = @(t) b .* sin(t);
h = 1e-4;
dfx = @(t) (x(t + h) - x(t)) / h;
dfy = @(t) (y(t + h) - y(t)) / h;
d2fx = @(t) (dfx(t + h) - dfx(t)) ./ h;
d2fy = @(t) (dfy(t + h) - dfy(t)) ./ h;
X1 = @(t) x(t) - dfy(t) .* (((dfx(t)).^2 + (dfy(t)).^2) ./ (dfx(t) .* d2fy(t) - d2fx(t) .* dfy(t)));
Y1 = @(t) y(t) + dfx(t) .* (((dfx(t)).^2 + (dfy(t)).^2) ./ (dfx(t) .* d2fy(t) - d2fx(t) .* dfy(t)));

plot(x(T), y(T));
hold on;
axis([-10 10 -10 10]);
# axis equal
h = plot(0,0);
g = plot(0,0);
hold off;

#xn =
#1уравнение нормали в точке (x0, y0) при параметрическом задании r = r(t)
#yn = @(t) y(t) - (dfx(t) ./ dfy(t)) .* (xn - x(t));

for t = T
  R = sqrt((x(t) - X1(t)).^2 + (y(t) - Y1(t)).^2);
  temp = 0:0.05:2*pi;
  X2 = R * cos(temp) + X1(t);
  Y2 = R * sin(temp) + Y1(t);
  set(h, 'XData', X2, 'YData', Y2);
  set(g, 'XData', X1(0:0.002*pi:t), 'YData', Y1(0:0.002*pi:t));
  drawnow;
endfor



