##t = -2*pi:0.01*pi:2*pi;
##x = 2*cos(t);
##y = 2*sin(t);
##plot(x,y)

#x = @(t)
#y = @(t)
fdifx = (f(x0 + h) - f(x0)) / h;
fdify = (f(y0 + h) - f(y0)) / h
t = -2*pi:0.01*pi:2*pi;
a = 3;
b = 4;
#эволюта эллипса
x = (a^2 - b^2) / a * (cos(t)).^3;
y = (b^2 - a^2) / b * (sin(t)).^3;

plot(x,y);

