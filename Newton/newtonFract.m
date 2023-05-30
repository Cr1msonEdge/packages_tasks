clear;
res = roots([1 0 0 -1]);

f = @(z) z.^3 - 1;
#y = 0.1 : 0.001 : 10;
#z = x + y*i;
#y = z .+ x
#plot(z, f(z));
eps = 1e-3;
h = 0.00005;
counter = 0;



[X, Y] = meshgrid(-2:0.01:2, -2:0.01:2);

zn = newtons(f, X + Y*i);
Z1 = abs(zn - res(1)) < eps;
Z2 = abs(zn - res(2)) < eps;
Z3 = abs(zn - res(3)) < eps;
Z4 = ~(Z1 + Z2 + Z3);
Z = Z1 + 2*Z2 + 3*Z3 + 4*Z4;

map = [1 0 0; 0 1 0; 0 0 1; 0 0 0];
colormap(map);

image([-2,2], [-2,2], Z);
