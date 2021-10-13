# Agregando datos al data frame

gatos <- data.frame(color = c("negro","atigrado","blanco"),
                    peso = c(2.5,5,3.2),
                    le_gusta_la_cuerda = c(TRUE,FALSE,TRUE))

## Agregando una nueva columna
gatos$dueno <- c("Nalle","Bere","David")

gatos$caza_ratones <- c(FALSE,TRUE,TRUE)
gatos

gatos[,6] <- c(1,0,1)

gatos[,"le_gustan_whiskas"] <- c(1,0,1)
gatos

gatos <- gatos[,-6]
gatos

## uniendo hacia la derecha
cbind(gatos, id = c("a","b","c"))
gatos <- cbind(gatos, id = c("a","b","c"))
gatos

## uniendo hacia la izquierda
gatos <- cbind(tiene_pelo = c(FALSE,FALSE,TRUE), gatos )
gatos

## cambiando una columna de posición
gatos <- cbind(color = gatos$color, gatos[,-2])
gatos
