L = 4;

[t, y] = ode45(@taskTheta2, 0:0.01:10, [0, 1]);
thetaArr = y(:, 1)';

g = plot(0, 0);
hold on
axis equal
g1 = plot(0, 0);
set(gca, 'xlim', [-10,10], 'ylim',[-5,10]);

R = 0.5;
r=0:0.01:2*pi

xW = @(r, x0) R*cos(r) + x0;
yW = @(r, y0) R*sin(r) + y0;

for i=1:1:length(thetaArr)
  xP = @(t) L * sin(thetaArr(t)) + 0;
  yP = @(t) -L * cos(thetaArr(t)) + 4;
  set(g1, 'XData', [0, xP(i)], 'Ydata', [4, yP(i)])
  set(g, 'XData', xP(i) + xW(r, 0), 'YData', yP(i) + yW(r, 0));
  drawnow
endfor




