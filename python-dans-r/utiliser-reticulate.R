
# install.packages("reticulate")
library(reticulate)

# Chargement de l'interpréteur Python
repl_python()

# Vérifier la version actuelle de Python

reticulate::py_config()

# Charger une version particulière de Python sur notre système
use_python("C:/Program Files/Python38", required = TRUE)


############################
# Importation des bibliothèques
############################

# import matplotlib.pyplot as plt
plt <- import('matplotlib.pyplot') 

# import numpy as np
np <- import('numpy')

############################
# Charger l'ensemble de données Iris
############################
data(iris)


############################
# Fixer l'état aléatoire pour la reproductibilité
############################

# np.random.seed(19680801)  # https://github.com/rstudio/reticulate/issues/226
np$random$seed(19680801L)

# N = 50
N <- 50L
# x = np.random.rand(N)
x <- np$random$rand(N)

# y = np.random.rand(N)
y <- np$random$rand(N)

# colors = np.random.rand(N)
colors <- np$random$rand(N)

# area = (30 * np.random.rand(N))**2  # 0 to 15 point radii
area <- (30 * np$random$rand(N))**2

# plt.scatter(x, y, s=area, c=colors, alpha=0.5)
plt$scatter(x, y, s=area, c=colors, alpha=0.5)

# plt.show()
plt$show()
