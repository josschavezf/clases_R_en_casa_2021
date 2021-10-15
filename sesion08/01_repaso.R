# agregar nuevas columnas a un data frame

gatos <- data.frame(color = c("negro","atigrado","blanco"),
                    peso = c(2.5,5,3.2),
                    le_gusta_la_cuerda = c(TRUE,FALSE,TRUE))
gatos

# seleccionar columnas usando corchetes

## seleccionar la columna peso
gatos[,2]

## seleccionar color y peso con corchetes
gatos[,c(1,2)]
gatos[,1:2]
gatos[,c("color","peso")]

# seleccionar columnas usando $

## seleccionar la columna peso
gatos$peso
gatos$le_gusta_la_cuerda

## ---------------------------------------------------------------------------
# nueva columna

# forma 1 usando corchetes
gatos[,4] <- c("Leslie","David","Bere")
gatos

colnames(gatos)

x <- c(1,2,3,4)
x[3] <- 5
x

y <- c("a","b","c","d")
y[2] <- "z"
y

class(x)
class(y)
class(gatos)
class(colnames(gatos))

columnas_gatos <- colnames(gatos)
columnas_gatos
class(columnas_gatos)

columnas_gatos[4] <- "dueno"
columnas_gatos

colnames(gatos)[4] <- "dueno"
colnames(gatos)

gatos

colnames(gatos)[4] <- "propietario"
gatos

## usando corchetes y el nombre de la columna
gatos[,"caza_ratones"] <- c(TRUE,TRUE,FALSE)
gatos

## agregar la edad del gato
gatos[,"edad"] <- c(2,5,3)
gatos

# forma 2 usando el símbolo $
gatos$le_gusta_la_cuerda

gatos$gusta_atun <- c(TRUE,FALSE,TRUE)
gatos

# forma 3 usando la funcion cbind()
tiene_manchas <- c(1,1,0)
tiene_manchas

cbind(gatos,tiene_manchas)

gatos <- cbind(gatos,tiene_manchas)
gatos

# cambiar de posición la columna

gatos[,-8]
cbind(tiene_manchas, gatos[,-8])

gatos <- cbind(tiene_manchas, gatos[,-8])
gatos

## agregar nueva columna, tiene pelo? Agregarla al inicio del data frame (izquierda)
tiene_pelo <- c(TRUE,FALSE,TRUE)
tiene_pelo

gatos <- cbind(tiene_pelo,gatos)

## cambiar la columna color hacia la primer posición

gatos[,-2] # tabla sin la columna color
gatos$color # extraer la columna color
gatos[,2] # alternativa

cbind(color=gatos[,2],gatos[,-2])
gatos <- cbind(color=gatos$color,gatos[,-2])
gatos

## cambiar la columna de propietario hasta la última posición (derecha)
gatos[,-5] # tabla sin la columna propietario
gatos$propietario # extraer la columna propietario

gatos <- cbind(gatos[,-5],propietario=gatos$propietario)
gatos

## agregar una columna cola_esponjosa en la posición 4 (columna no.4)
cola_esponjosa <- c(TRUE,TRUE,FALSE)
cola_esponjosa

## cbind en dos pasos
gatos_v2 <- cbind(gatos[,1:3],cola_esponjosa)
gatos_v2

gatos <- cbind(gatos_v2,gatos[,4:8])
gatos

gatos <- gatos[,-4]
gatos

gatos <- cbind(cbind(gatos[,1:3],cola_esponjosa),gatos[,4:8])
gatos

## cambiar la columna edad a la posición 3 (columna no.3)
gatos[,-7] # mostrar la tabla sin la columna 7
 # extraer la columna 7

