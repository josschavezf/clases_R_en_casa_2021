# explorando data frames

# otra forma de extraer información

gatos <- data.frame(color = c("mixto", "negro", "atigrado"),
                    peso = c(2.1, 5.0, 3.2),
                    le_gusta_la_cuerda = c(1L,0L,1L))
gatos

gatos[,1]
gatos[,"color"]

gatos[,c(1,3)]
gatos[,c("color","le_gusta_la_cuerda")]

# combinación de posición y nombre de columnas
gatos[2,c("color","le_gusta_la_cuerda")]
rownames(gatos)

gatos["2", c("color","le_gusta_la_cuerda")]

View(mtcars)
mtcars["Mazda RX4",]
mtcars[c("Mazda RX4", "Datsun 710"),]

mtcars[c("Mazda RX4", "Datsun 710"),2]
mtcars[c("Mazda RX4", "Datsun 710"),"cyl"]
mtcars[c("Mazda RX4", "Datsun 710"),c(1,2)]
mtcars[c("Mazda RX4", "Datsun 710"),c("mpg","cyl")]

# obtener la información invirtiendo las posiciones
mtcars[c("Mazda RX4", "Datsun 710"),c("cyl","mpg")]
mtcars[c("Datsun 710","Mazda RX4"),c("cyl","mpg")]

mtcars[c(3,1),c(2,1)]

# atigrado y negro con todas las columnas
gatos[c(3,1),]
rownames(gatos)

# asigna los rownames para extraer información
rownames(gatos) <- gatos[,1]
rownames(gatos)
gatos

# extraer atigrado y mixto, con todas las columnas
# usando rownnames
gatos[c("atigrado","mixto"),]

# atigrado y mixto
gatos[c("atigrado","mixto"),2]
gatos[c("atigrado","mixto"),"peso"]

# atigrado y mixto, si le gusta la cuerda y peso
gatos[c("atigrado","mixto"),c("le_gusta_la_cuerda","peso")]

# negro y mixto, peso y color
gatos[c("negro","mixto"),c("peso","color")]

# extraer información sin usar corchetes
gatos$color
gatos$peso

# extraer información de la columna como vector
gatos$color[2] # para extraer negro
gatos$color[c(2,3)] # para extraer negro y atigrado
gatos$color[2:3] # para extraer negro y atigrado usando rangos

library(palmerpenguins)
names(penguins)

penguins$species # nos da un vector
penguins[,1] # nos puede conservar la clase del dataframe o tibble

penguins$island
penguins_raw$Region

length(penguins$sex) # obtener la longitud
mean(penguins$bill_length_mm, na.rm = TRUE) # obtener el promedio, usar na.rm = TRUE para encender el parámetro de remover los NA's
median(penguins$bill_length_mm, na.rm = TRUE) # obtener la mediana ignorando los NA's

is.na(penguins)
is.na(penguins$bill_length_mm)

penguins$bill_length_mm[is.na(penguins$bill_length_mm)]

penguins$sex[is.na(penguins$sex)]

penguins$island[is.na(penguins$island)]

# conocer la longitud o número de NA's sin imprimir los NA's
length(penguins$sex[is.na(penguins$sex)]) # aqui hay 11 NA's
length(penguins$island[is.na(penguins$island)]) # aqui hay 0 NA's

# cuáles gatos tienen un peso menor a 4
gatos$peso[gatos$peso < 4]
gatos[gatos$peso < 4,]

# a cuáles gatos les gusta la cuerda?
gatos[gatos$le_gusta_la_cuerda == 1,]

# a cuáles gatos no les gusta la cuerda?
gatos[gatos$le_gusta_la_cuerda == 0,]

# cuál es el color de los gatos a los que no les gusta la cuerda
gatos[gatos$le_gusta_la_cuerda == 0,1]
gatos[gatos$le_gusta_la_cuerda == 0,"color"]

# cuáles pinguinos son de la isla Dream?
summary(penguins$island) # para ver cuáles islas tenemos

# usando a la columna island para hacer el filtrado
penguins[penguins$island == "Dream",]

# selecciona a los pinguinos de la isla Dream
# y obtén las columnas species y island
penguins[penguins$island  == "Dream",c("species","island")]

mean(gatos$peso)

# cuáles gatos tienen un peso mayor a la media
gatos[gatos$peso > mean(gatos$peso),]

# cuáles pinguinos tienen un largo
# de aleta mayor al promedio?

mean(penguins$flipper_length_mm, na.rm = TRUE)

penguins[penguins$flipper_length_mm > mean(penguins$flipper_length_mm, na.rm = TRUE),]

# podemos guardar el resultado del promedio en una variable
promedio_aleta <- mean(penguins$flipper_length_mm, na.rm = TRUE)
promedio_aleta

# y usamos la variable para filtrar
penguins[penguins$flipper_length_mm > promedio_aleta, ]
