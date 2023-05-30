t = 0:0.01*pi:2*pi;
t1 = 0:0.01*pi:4*pi;
a = 2;
b = 3;
x = @(t) a .* cos(t);
y = @(t) b .* sin(t);


evolute(x, y, t);

evolvent(x, y, t1);
hold off
