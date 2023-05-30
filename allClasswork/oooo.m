#x = [0:0.02:1];
#y=x.*(1-x) + 0.1;
#x1 = [-0.5:0.05:1.5];
#plot(x,y,x1,(x1+0.5)/5)
#plot(x,y, 'Color', [0, 0.5, 0.3], 'Linewidth', 3, 'Marker', '*', 'MarkerSize', '10');
#hold on;
#plot(x1,(x1+0.5)/5);
#grid on;
#xlabel('Time')
#ylabel('Function')
#title('Graphics')

#Fig=figure('NumberTitle', 'off', 'Name','Graphics');
#x=linspace(0,2*pi,500);
#y=exp(-0.5*x).*sin(4*pi*x);
#z=exp(-0.5*x);
#plot(x,y,x,z,':r',x,-z,':r','LineWidth',2)
#grid on

#figure
#plot(x,-z,':r', 'LineWidth', '2')

x = linspace(0, 2 * pi, 1000);
subplot(2,2,1)
plot(x, sin(x), 'LineWidth', 2, 'Color', 'g');
xlabel('x');
ylabel('sin(x)')


subplot(2,2,2);
plot(x,sin(2*x), 'Linewidth', 2, 'Color', [1 0 1/7]);
xlabel('x')
ylabel('sin(2x)')


subplot(2,2,3);
plot(x,sin(2*x), 'Linewidth', 2, 'Color', [0.3 0.1 6/7]);
xlabel('x')
ylabel('sin(3x)')

subplot(2,2,4);
plot(x, sin(4*x), 'Linewidth', 2, 'Color', [1 0.6 3/7]);
xlabel('x')
ylabel('sin(4x)')

#
