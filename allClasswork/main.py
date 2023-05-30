import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import matplotlib
import seaborn as sns

titanic = pd.read_csv("titanic.csv")
print()

# titanic = titanic.assign(relatives=lambda x: (x.SibSp + x.Parch) != 0)
#
# counter = titanic.groupby("Sex")["Survived"].sum()
# print(counter)

# print(pd.pivot_table(titanic, columns="Sex", values="Survived", aggfunc=np.sum))
print(titanic[["Survived", "Sex"]])
print(pd.pivot_table(titanic[["Survived", "Sex"]], index="Survived", columns="Sex", aggfunc=len))

sns.histplot(titanic, x="Age", hue="Survived", bins=50)

# titanic[titanic.Survived == 1].hist(column="Age")
# titanic[titanic.Survived == 0].hist(column="Age")
plt.show()








# переименовать - apply, replace
# pivot_table