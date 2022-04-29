
### Primeiros Passos no R - Conhecendo a ferramenta ###


# Bases de dados do R (conjunto nativo de dados)

data() # listar bases de dados dentro do R.

# As bases de dados serão o nosso objeto de trabalho 

PlantGrowth # digita nome da base para carregá-la!

help("PlantGrowth") # maior descrição sobre a base de dados

class(PlantGrowth) # informa o tipo de classe das colunas da base de dados

View(PlantGrowth) # visualiza a base de dados em outra aba.


# Sempre começa instalando ou carregando pacotes!

# Pacote é um conjunto de funções para um determinado fim,
# Por exemplo, importar arquivos para o R.

install.packages("tidyverse") # um pacote famoso e importante que engloba vários outros.
library(tidyverse)


### Manipulação

summary(PlantGrowth)


peso <- PlantGrowth$weight
grupo <- PlantGrowth$group


# Avaliando as médias dos grupos

mean(peso[grupo=="ctrl"])  
mean(peso[grupo=="trt1"])
mean(peso[grupo=="trt2"])

# De forma mais resumida

tapply(peso, grupo, mean)


### Visualização dos dados (DataViz)

# Distribuição dos dados:

boxplot(peso~grupo, main = "Planta vs Peso",
        xlab = "Planta", ylab = "Peso")

