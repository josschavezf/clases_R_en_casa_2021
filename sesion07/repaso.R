# filtrado de datos (data frames)

gatos <- data.frame(color = c("negro","atigrado","blanco"),
                    peso = c(2.5,5,3.2),
                    le_gusta_la_cuerda = c(TRUE,FALSE,TRUE))
gatos

# forma 1: usando los corchetes

## seleccionar la columna 3
gatos[,3]

## seleccionar a los gatos a los que les gusta la cuerda
## e imprir todas las columnas de esos gatos
gatos[c(1,3),] # forma manual
gatos[gatos$le_gusta_la_cuerda == TRUE,]

## seleccionar a los gatos a los que no les gusta la cuerda
## e imprimir todas sus columnas
gatos[2,] # forma manual
gatos[gatos$le_gusta_la_cuerda == FALSE,]

## seleccionar a los gatos a los que les gusta la cuerda,
## y mostrar su color y peso
gatos[gatos$le_gusta_la_cuerda == TRUE,c(1,2)]

## seleccionar a los gatos a los que les no gusta la cuerda,
## y mostrar su color y si les gusta la cuerda
gatos[gatos$le_gusta_la_cuerda == FALSE,c(1,3)]

names(gatos)
colnames(gatos)

gatos[gatos$le_gusta_la_cuerda == FALSE,c("color","le_gusta_la_cuerda")]
gatos[gatos$le_gusta_la_cuerda == TRUE,c("color","peso")]

## seleccionar a los gatos que tienen un peso mayor a 3kg,
## y mostrar todas las columnas
gatos[gatos$peso >= 3,]

## seleccionar a los gatos que tienen un peso mayor a 3kg,
## y mostrar su color y peso
gatos[gatos$peso >= 3,c("color","peso")]

## seleccionar a los gatos que tienen un peso menor a 3kg,
## y mostrar su color y peso
gatos[gatos$peso < 3,c("color","peso")]

mean(gatos$peso)
promedio_peso <- mean(gatos$peso)
promedio_peso

## seleccionar a los gatos que tienen un peso mayor o igual al
## promedio y mostrar todas sus columnas
gatos[gatos$peso >= promedio_peso,]
gatos[gatos$peso >= mean(gatos$peso),]

## seleccionar a los gatos con peso menor a la mediana
## y mostrar solo el color y si le gusta la cuerda
gatos[gatos$peso <= median(gatos$peso),c("color","le_gusta_la_cuerda")]

# forma 2: usando la función subset

## seleccionar a los gatos a los que les gusta la cuerda
## y mostrar todas sus columnas
subset(gatos, le_gusta_la_cuerda == TRUE)

## seleccionar a los gatos a los que no les gusta la cuerda
## y mostrar todas sus columnas
subset(gatos, le_gusta_la_cuerda == FALSE)

## seleccionar a los gatos a los que les gusta la cuerda
## y mostrar solamente color y peso
subset(gatos,le_gusta_la_cuerda == TRUE,select = c("color","peso"))

promedio_peso

## seleccionar a los gatos con un peso mayor o igual al promedio
## y mostrar las columnas color y peso
subset(gatos,peso >= promedio_peso,select = c("color","peso"))

## seleccionar a los gatos con un peso mayor o igual a la mediana
## y mostrar las columnas peso y si le gusta la cuerda
subset(gatos,peso >= median(gatos$peso), select = c("peso","le_gusta_la_cuerda"))
