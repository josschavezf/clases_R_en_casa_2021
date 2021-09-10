
# repaso
midataframe <- data.frame(columna1 = c(1,2,3),
                          columna2 = c("a","b","c"))
View(midataframe)
midataframe

midataframe[2,2]
midataframe[3,1]
midataframe[c(1:3),]
midataframe[,1]
midataframe[,2]
midataframe[3,]

class(midataframe[3,])
class(midataframe[,2])

summary(midataframe) # estadístico de cada columna
str(midataframe) # tipo de datos
dim(midataframe) #dimensiones
ncol(midataframe) # num columnas
nrow(midataframe) # num lineas

names(midataframe) # nombre de columnas
colnames(midataframe) # nombre de columnas
rownames(midataframe) # nombre de lineas

