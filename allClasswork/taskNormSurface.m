[x,y] = meshgrid(-1:0.1:1, -3:0.1:3);
z = 20 - x.^2 - y.^2;
# dz/dx = -2x
# dz/dy = -2y

surfc(x,y,z);
hold on;

point = [0, -1, 19];
norm = [0, 2, 1];
guide = norm - point;


X = [0, -3 * guide(1) + 0];
Y = [-1, -3 * guide(2) - 1];
Z = [19, -3 * guide(3) + 19];
plot3(X,Y,Z);

