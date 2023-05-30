plot(randn(10, 3));
set(gca, 'ytick', [-5 -3 0 2 pi]);

#set(gca, 'linewidth', 3) - толщина осей

#set(gca, 'ylim', [-5 pi]); - пределы графика

hold on
c = plot(randn(10,1))
set(c, 'linewidth', 5)
hold off;

