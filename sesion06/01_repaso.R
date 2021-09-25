# 24 de septiembre de 2021
gatos <- data.frame(color = c("negro","mixto","atigrado"),
                    peso = c(2.1,3.4,5),
                    le_gusta_la_cuerda = c(TRUE,FALSE,TRUE),
                    sabe_hacer_trucos = c(1,0,1))
gatos

# ver el tipo de datos de cada columna
str(gatos)

# cambiar los valores de color de los gatos
gatos$color <- c("verde","morado","rosa")


as.logical(gatos[,3])
as.logical(gatos$sabe_hacer_trucos)

gatos$sabe_hacer_trucos <- as.logical(gatos$sabe_hacer_trucos)

gatos


gatos$sabe_hacer_trucos <- as.logical(gatos$sabe_hacer_trucos)

str(gatos)

# convertir la columna peso a tipo character
gatos$peso <- as.character(gatos$peso)
str(gatos)
gatos$peso

# seleccionar valores
gatos[,2]
gatos[c(1,2),]
gatos[c(1,3),]

gatos[gatos$sabe_hacer_trucos == TRUE,]

# los que no les gusta jugar con la cuerda
gatos[gatos$le_gusta_la_cuerda == FALSE,]

str(gatos)
gatos$peso <- as.numeric(gatos$peso)

# seleccionar a los gatos con peso menor a 4
gatos[gatos$peso < 4,]

# seleccionar a los gatos con peso mayor a la media
media_peso <- mean(gatos$peso)
media_peso

gatos[gatos$peso > media_peso,]

gatos[gatos$peso > mean(gatos$peso),]

gatos[gatos$peso > mean(gatos$peso),c("color","peso")]
