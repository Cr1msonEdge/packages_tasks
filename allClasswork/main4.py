import numpy as np
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import axes3d
from scipy.integrate import solve_ivp
from mpl_toolkits import mplot3d

if __name__ == '__main__':
    a = [1, 2, 3]  # list
    a[1] = 3
    print(a, type(a))

    b = (1, 2, 3)  # tuple. Неизменяемый контейнер
    ###
    myList = [1, 2, 3, 5]
    arr = np.array([1, 2, 3, 5])
    print(arr, type(arr))

    myList[-1] = "adding a string"
    print(myList)

    # чтобы не округлял до инта, нужно указать тип данных массива
    B = np.array([[1, 2], [3, 4]], dtype=float)
    print(B, B.dtype)

    # range
    print([i for i in range(5)])
    print(np.arange(3, 15, 0.3))

    # срезы аналогичны

    # графика
    # fig = plt.figure()  # создали область Figure
    # ax = fig.add_subplot(111)  # добавили к Figure область axes

    # fig.set(facecolor='green')
    # ax.set(facecolor='red')
    #
    # ax.set_xlabel("ось абсцисс (XAxis)")
    # ax.set_ylabel("ось ординат (YAxis)")
    #
    # ax.set_title("Основы matplotlib", color="white", size=20)
    # plt.show()


    # ax = axes3d.Axes3D(plt.figure())
    fig, ax = plt.subplots(subplot_kw={"projection": "3d"})

    x = np.arange(-1, 1, 0.01)
    y = np.arange(-1, 1, 0.01)
    X, Y = np.meshgrid(x, y)

    Z = X ** 2 - Y ** 2
    ax.plot_wireframe(X, Y, Z, rstride=5, cstride=5)

    plt.show()

    # диффуры
    # задаем функцию F
    # проверить, что ОДУ в стандартной форме. Определить аргументы функции: f(t, y, [parametrs])
    # задать массив для временного промежутка t_span = [<t_beg>, <t_end>]
    #

    def funA(t, y):
        tau = 1.0
        return -y/tau




    # t_span = np.array([0, 5])
    # y0 = np.array([1.0])  # массив начальных условий
    # soln = solve_ivp(funA, t_span, y0)
    # t = soln.t
    # y = soln.y[0]
    # t_exact = np.linspace(t_span[0], t_span[1], 101)
    # y_exact = y0 * np.exp(-t_exact / 1.0)
    #
    # plt.rc("font", size=16)
    # plt.figure(figsize=(8,6))
    # plt.plot(t_exact, y_exact, '-', label='exact')
    # plt.plot(t, y, 'o', label="solve_ivp")
    # plt.xlabel('time')
    # plt.ylabel('y')
    # plt.legend()
    # plt.show()

    #

