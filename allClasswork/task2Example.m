x = -10:0.1:10;
k = -2;
y = k .* x.^2 - 3;

h = plot(x, y)

axis([-20 20 -20 20]);

while k <= 2
  k = k + 0.007;
  y = k * x.^2 - 3;
## hold on
## plot(x, y);
  set(h, 'XData', x, 'Ydata', y); # передает данные x и y, отрисовывает их на h
  drawnow
endwhile
