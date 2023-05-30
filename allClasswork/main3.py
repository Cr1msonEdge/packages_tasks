import pandas as pd
import numpy as np
import matplotlib

if __name__ == '__main__':
    # series - одномерный размеченный массив, хрнаящий данные любого типа:
    # имеет конструктор от словарей, списков, массивы numpy ndarray
    labels = ['a', 'b', 'c']
    my_list = [10, 20, 30]
    arr = np.array([10, 20, 30])
    d = {'a': 10, 'b': 20, 'c': 30}


    s = pd.Series(data=my_list, index=labels)
    print(s)
    s = pd.Series(d)  # от словаря
    print(s)
    # iloc - поиск по позиции
    # loc - по метке

    # s.values() - значениея
    #