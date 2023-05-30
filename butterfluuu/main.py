import numpy as np
import matplotlib.pyplot as plt

from mpl_toolkits.mplot3d import axes3d
from scipy.integrate import solve_ivp
from mpl_toolkits import mplot3d


def func(t, y):
    r = 28
    sigma = 10
    beta = float(8 / 3)
    return np.array([sigma * (y[1] - y[0]), y[0] * (r - y[2]) - y[1], y[0] * y[1] - beta * y[2]])


def rungeKutta(f, y0, t, args=()):
    n = len(t)
    y = np.zeros((n, len(y0)))
    y[0] = y0
    for i in range(n - 1):
        y[i + 1] = y[i] + (t[i + 1] - t[i]) * f(y[i], t[i], *args)
    return y


def rk4(func, tk, yk, dt=0.01):
    f1 = func(tk, yk)
    f2 = func(tk + dt / 2, yk + (f1 * (dt / 2)))
    f3 = func(tk + dt / 2, yk + (f2 * (dt / 2)))
    f4 = func(tk + dt, yk + (f3 * dt))

    return yk + (dt / 6) * (f1 + (2 * f2) + (2 * f3) + f4)


if __name__ == '__main__':
    r = 28
    sigma = 10
    beta = float(8 / 3)
    t_span = np.array([0, 40])
    y0 = np.array([1.0, 1.0, 1.0])
    tt = np.linspace(t_span[0], t_span[1], 5000)
    soln = solve_ivp(func, t_span, y0, t_eval=tt)
    t = soln.t
    x = soln.y[0]
    y = soln.y[1]
    z = soln.y[2]
    sol = 0
    yk = y0
    for _ in range(10000):
        sol = rk4(func, t_span, yk)
    fig, ax = plt.subplots(subplot_kw={"projection" : "3d"})
    print(soln)
    print(sol)
    ax.plot(x, y, z)
    plt.show()
    ax.plot
    # plt.rc("font", size=16)
    #
    # plt.figure(figsize=(8,6))
    # plt.plot(t, y[0], 'o', label="solve_ivp")
    # # plt.xlabel('time')
    # plt.ylabel('y')
    # plt.legend()
    # plt.show()
