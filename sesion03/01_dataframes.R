# data frame es una estructura en dos dimensiones
# (se asemeja a una tabla)
#
# Propiedades
# - columnas (columns, cols)
# - filas (rows, obs, observaciones)
# debe tener al menos 1 columna
# todas sus columnas deben tener el mismo número de filas
# todos los valores dentro de una columnna deber ser del mismo tipo
# entre columnas pueden tener diferentes tipos de valor
# cada columna de un data frame es un vector

# cómo construir un data frame
gatos <- data.frame(color = c("mixto","negro","atigrado"),
                    peso = c(2.1,5.0,3.2),
                    le_gusta_la_cuerda = c(1L,0L,1L))
# para ver el contenido
gatos # imprimir en la consola
View(gatos) # nos abre una nueva pestaña

# R tiene algunos data frames incluidos
View(mtcars)

# podemos instalar y cargar algunos adicionales
library(palmerpenguins)
penguins
View(penguins)
data("penguins") # para cargar un set de datos a nuestro environment

# para obtener un resumen estadístico de los datos
summary(penguins)
# para conocer el tipo de dato en cada columna
str(penguins)

# para conocer las dimensiones del dataframe (lineas/columnas)
dim(gatos)
dim(penguins)

nrow(penguins) # número de lineas
ncol(penguins) # número de columnas

# para saber el nombre de las columans
colnames(penguins)
colnames(gatos)
names(penguins)
names(gatos)

# para saber el nombre de las lineas
rownames(penguins)
rownames(gatos)
rownames(mtcars)

# extraer elementos usando la posición (lineas/columnas)
gatos[2,2] # renglon 2 columna 2
gatos[3,2]
gatos[2,1]
gatos[1,3]
gatos[1,4]

# para obtener todos los valores de la columna 1
gatos[,1]
gatos[2,]

gatos[,2]
gatos[3,]

# el resultado es de 2 clases diferentes
class(gatos[,2]) # clase vector
class(gatos[3,]) # clase data.frame

# podemos trabajar cada resultado de manera diferente
resultado_vector <- gatos[,2]
resultado_vector

resultado_dataframe <- gatos[3,]
class(resultado_dataframe)

dim(resultado_dataframe)
nrow(resultado_dataframe)
ncol(resultado_dataframe)

resultado_dataframe[1,2]
resultado_dataframe[1,]
resultado_dataframe[,c(1,3)]

gatos[,c(1,3)]
gatos[c(1,3),]
gatos[c(1,3),c(1,3)]
gatos[c(1,3),1]

# otro ejemplo
frutas <- data.frame(nombre = c("manzana","pera","papaya"),
                     color = c("roja","verde","naranja"),
                     madurez = c(1L,1L,0L),
                     precio = c(10,20,20.5))
View(frutas)
frutas

summary(frutas)
frutas$nombre <- as.factor(frutas$nombre)
class(frutas[,1])
summary(frutas)

str(frutas)
dim(frutas)
nrow(frutas)
ncol(frutas)

names(frutas)
colnames(frutas)
rownames(frutas)

frutas[1,2]
frutas[3,4]
frutas[,1]

# podemos guardar el resultado en una variable
precios <- frutas[,4]
sum(precios)
min(precios)
max(precios)

frutas[3,]
