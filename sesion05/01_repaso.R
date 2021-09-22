# martes 21 de septiembre de 2021

df <- data.frame(a = c(1,2,3),
                 b = c("a","b","c"),
                 c = c(1,0,1))
# ver la estructura del data frame
str(df)

# extrayendo la columna a forma 1
df[,1]
df[,2]

# extrayendo la coolumna a forma 2
df$a
df$b

# conocer la clase de cada columna
class(df)
class(df$a)
class(df[,1])

class(df[,3])
class(df$c)

# conversión de numérico a lógico
as.logical(df[,3])

df[,3] <- as.logical(df[,3]) # opción 1
df$c <- as.logical(df$c) # opción 2

as.numeric(df$c)
as.numeric(df$b)

as.character(df$a)
as.character(df$b)
as.character(df$c)

gatos <- data.frame(color = c("negro", "mixto", "atigrado"),
                    peso = c(2.1,5.0,3.2),
                    le_gusta_la_cuerda = c(1,1,0))

str(gatos)
gatos[,3] <- as.logical(gatos[,3])

str(gatos)

class(gatos[,3])
class(gatos$le_gusta_la_cuerda)

gatos[c(1,2),]

# seleccionar a los gatos a los que les
# gusta jugar con la cuerda
gatos[gatos$le_gusta_la_cuerda == TRUE , ]

# seleccionar a todos los gatos a los que
# les gusta jugar con la cuerda y vamos a
# imprimir su color

## opción 1: usando la posición de la columna
gatos[,1]
gatos[gatos$le_gusta_la_cuerda == TRUE ,  1]

## opción 2: usando el nombre de la columna
names(gatos)
colnames(gatos)

gatos[,"color"]

gatos[gatos$le_gusta_la_cuerda == TRUE, "color"]

# imprimir el peso de los gatos a los que
# les gusta jugar con la cuerda
gatos[gatos$le_gusta_la_cuerda == TRUE, "peso"]

# el peso de los gatos a los que no
# les gusta jugar con la cuerda
gatos[gatos$le_gusta_la_cuerda == FALSE, "peso"]

# el color y el peso de los gatos a los que
# les gusta jugar con la cuerda
gatos[gatos$le_gusta_la_cuerda == TRUE,c("color","peso")]

# selección de todos los valores,
# excepto uno de ellos
x <- 1:5

x[1:4]
x[c(1,2,4,5)]
x[c(1:2,4:5)]

x[-3] # dame todos los valores, excepto al 3

# todos los valores, excepto el 4
x[-4]

# todas las columnas, excepto el peso
gatos[,-2]

# todas las columnas, excepto si le
# gusta la cuerda
gatos[,-3]

# a los gatos que les gusta la cuerda, y
# todas las columnas, excepto el peso
gatos[gatos$le_gusta_la_cuerda == TRUE, -2]

# seleccionar a los gatos con un peso
# menor a 4
gatos[gatos$peso < 4,]

# seleccionar a los gatos con el peso
# menor o igual a 4 y todas la columnas,
# excepto si le gusta la cuerda
gatos[gatos$peso <= 4, c(1:2)]
gatos[gatos$peso <= 4, -3]

# mostrar todas las columnas, excepto las
# 1 y 3
gatos[,-c(1,3)]

library(datos)
View(pinguinos)
colnames(pinguinos)
ncol(pinguinos)
dim(pinguinos)

# seleccionar todas las columnas
# excepto la 1 y 3
View(pinguinos[,-c(1,3)])
