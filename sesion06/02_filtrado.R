# 24 de septiembre de 2021
gatos <- data.frame(color = c("negro","mixto","atigrado"),
                    peso = c(2.1,3.4,5),
                    le_gusta_la_cuerda = c(TRUE,FALSE,TRUE))
gatos

# seleccionar a los gatos a los que les
# gusta jugar con la cuerda
subset(gatos, le_gusta_la_cuerda == TRUE)

# seleccionar a los gatos que les gusta
# la cuerda y saber su color y peso

subset(gatos, le_gusta_la_cuerda == TRUE, c(color,peso))
subset(gatos, select =  peso, subset =  le_gusta_la_cuerda == TRUE)

# seleccionar a todos gatos, pero solo
# las columnas de color y si le gusta la cuerda
gatos[,c(1,3)]
gatos[,c("color","le_gusta_la_cuerda")]

subset(gatos, select = c(color, le_gusta_la_cuerda) )

x <- c(1,2,3,NA)
x
mean(x,na.rm = TRUE)

