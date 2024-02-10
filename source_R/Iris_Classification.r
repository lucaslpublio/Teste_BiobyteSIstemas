# Carregar os dados do arquivo "iris.data"
dados <- read.csv("iris.data", header = FALSE)

# Definir os nomes das colunas
colnames(dados) <- c("sepal_length", "sepal_width", "petal_length", "petal_width", "species")

# Visualizar as primeiras linhas da base de dados
head(dados)

# Verificar a quantidade de atributos e registros
n_attributes <- ncol(dados)
n_records <- nrow(dados)
cat("Quantidade de atributos:", n_attributes, "\n")
cat("Quantidade de registros:", n_records, "\n")

# Identificar os tipos de atributos
str(dados)

# Identificar quantos registros existem para cada espécie de Íris
quantidade_por_especie <- table(dados$species)

# Exibir a contagem de registros para cada espécie
print(quantidade_por_especie)

# Sumarizar a base de dados
summary(dados)

# Calcular a média de cada atributo
media_sepal_length <- mean(dados$sepal_length)
media_sepal_width <- mean(dados$sepal_width)
media_petal_length <- mean(dados$petal_length)
media_petal_width <- mean(dados$petal_width)

# Criar um novo registro com os valores das médias
novo_registro <- data.frame(sepal_length = media_sepal_length,
                            sepal_width = media_sepal_width,
                            petal_length = media_petal_length,
                            petal_width = media_petal_width,
                            species = NA)

# Adicionar o novo registro ao dataframe
dados <- rbind(dados, novo_registro)

# Visualizar as últimas linhas para confirmar a adição do novo registro
tail(dados)

# Adicionar uma nova coluna "species_numeric" ao dataframe
dados$species_numeric <- NA

# Atribuir valores numéricos de acordo com a espécie
dados$species_numeric[dados$species == "Iris-setosa"] <- 1
dados$species_numeric[dados$species == "Iris-versicolor"] <- 2
dados$species_numeric[dados$species == "Iris-virginica"] <- 3

# Visualizar o dataframe para confirmar a adição da nova coluna
head(dados)

# Calculando os valores máximos, mínimos, média e mediana de cada atributo
maximos <- apply(dados[,1:4], 2, max)
minimos <- apply(dados[,1:4], 2, min)
medias <- apply(dados[,1:4], 2, mean)
medianas <- apply(dados[,1:4], 2, median)

# Criando um dataframe para armazenar os resultados
resumo <- data.frame(Atributo = c("sepal_length", "sepal_width", "petal_length", "petal_width"),
                     Maximo = maximos,
                     Minimo = minimos,
                     Media = medias,
                     Mediana = medianas)

# Visualizando o resumo
print("Resumo da base de dados:")
print(resumo)

# Transformando o tipo do atributo de espécies em factor
dados$species <- factor(dados$species)

# Verificando os tipos de atributos após a transformação
str(dados$species)

# Carregar os dados do arquivo "iris.data"
dados <- read.csv("iris.data", header = FALSE)

# Definir os nomes das colunas
colnames(dados) <- c("sepal_length", "sepal_width", "petal_length", "petal_width", "especie")

# Calcular as médias de cada atributo
media_sepal_length <- mean(dados$sepal_length)
media_sepal_width <- mean(dados$sepal_width)
media_petal_length <- mean(dados$petal_length)
media_petal_width <- mean(dados$petal_width)

# Criar um novo registro com os valores médios dos atributos e NA para a espécie
novo_registro <- data.frame(sepal_length = media_sepal_length,
                            sepal_width = media_sepal_width,
                            petal_length = media_petal_length,
                            petal_width = media_petal_width,
                            especie = NA)

# Adicionar o novo registro ao dataframe
dados <- rbind(dados, novo_registro)

# Adicionar uma nova coluna "especie_numerica" ao dataframe
dados$especie_numerica <- NA

# Atribuir valores numéricos de acordo com a espécie
dados$especie_numerica[dados$especie == "Iris-setosa"] <- 1
dados$especie_numerica[dados$especie == "Iris-versicolor"] <- 2
dados$especie_numerica[dados$especie == "Iris-virginica"] <- 3

# Visualizar o dataframe para confirmar a adição da nova coluna
print(dados)

# Contar o número de registros para cada espécie
contagem_especies <- table(dados$especie)

# Plotar o gráfico de barras
barplot(contagem_especies, 
        main = "Quantidade de Registros por Espécie", 
        xlab = "Espécie", 
        ylab = "Quantidade",
        col = "skyblue",
        legend.text = TRUE)

# Calcular a contagem de registros para cada espécie
contagem_especies <- table(dados$especie)

# Gerar o gráfico de pizza
pie(contagem_especies, 
    main = "Quantidade de Registros por Espécie", 
    col = rainbow(length(contagem_especies)))

# Adicionar legenda
legend("topright", 
       legend = names(contagem_especies), 
       fill = rainbow(length(contagem_especies)))


