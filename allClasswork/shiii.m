##x = linspace(0,2 * pi, 100);
##y = sin(x);
##scatter(x,y)
##
##t = 0:0.05:9*pi;
##
##x=2*sin(t);
##y=3*cos(t);
##plot3(x,y,t);
##grid on;
##xlabel('X');
##ylabel('Y');
##zlabel('Z');
##title('Пространственная спираль')

##t = -10*pi:pi/250:10*pi;
##x = (cos(2*t).^2).*sin(t);
##y = (sin(2*t).^2).*cos(t);
##comet3(x,y,t);

#[X,Y] = meshgrib(a:h:b, c::h::d)
##[x,y] = meshgrid(-5:0.5:5, -5:0.5:5);
##plot(x,y);
##xlabel('X');
##ylabel('Y');

##[X,Y,Z] = sphere(12);
##subplot(1,2,1);
##mesh(X,Y,Z);
##hidden on; #рисует сетчатую поверхность, видна для верхнего слоя
##axis square off;
##
##subplot(1,2,2);
##mesh(X,Y,Z);
##hidden off;
##axis square off;

#surf формирует сплошную поверхность, т.е. сначала формирует опорную поверхность(каркас
# а затем осуществляет цветовую заливку каждой клетки
#surfc еще и строит линии уровня

#-----------------------

##u = 0:0.05:2*pi;
##v = -1:0.05:1;
##
##[U,V] = meshgrid(u, v);
###Z = sin(sqrt(X.^2+Y.^2))./sqrt(X.^2+Y.^2);
##
##x = (1 + V./2 .* cos(U./2)).*cos(U);
##y = (1 + V./2 .* cos(U./2)).*sin(U);
##z = V./2 .* sin(U./2);
##
##surfc(x,y,z);
##shading interp;

##figure
##surfc(X,Y,Z);
##
##shading flat;
###shading faceted;
###shading interp;
##colormap('Cividis');
##

##t = 0:pi/250:10*pi;
##x = 2 * cos(t);
##y = 2 * sin(t);
##z = 2.*t + 2;
##
##t = 0:pi/250:10*pi;
##x2 = 2 * cos(pi + t);
##y2 = 2 * sin(pi + t);
##z2 = 2.*t + 2;
##plot3(x, y, t, color='blue', x2, y2, t, color='red');
##
##hold on;
##
##for i=0:0.5*pi:10*pi
##  plot3([2 * cos(i), 2*cos(i+pi)], [2 * sin(i), 2*sin(pi+i)], [i,i], color='green');
##endfor
##hold off;


#comet3(x,y,t);
##[X,Y] = meshgrid(x,y);
##
##Z = 20 - X.^2 - Y.^2;
##mesh(X,Y,Z);
##
##x0 = 0;
##y0 = -1;
##
##f = (Z(X + eps, Y) - z(X, Y))/eps

I = imread ("800px-Dodecahedron.png");
J = process_my_image (I);
imwrite (J, "800px-Dodecahedron.png");
imshow(J);
