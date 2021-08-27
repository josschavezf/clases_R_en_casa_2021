# Podemos guardar los objetos de R dentro de variables
#
# Tipos de objetos en R
# 1) vectores (la unidad básica)

# para definir un vector usamos el símbolo de asignación
x <- 10

# podemos guardar el resultado de una operación
x <- 1/40

# nota que ahora ya no nos imprime el resultado
# pero podemos imprimir el contenido usando el nombre del vector
x

# usando la función combinar podemos guardar varios valores dentro del vector
x_num <- c(1,5,8)
x_num # para imprimir x

x_char1 <- c("a","b","c")
x_char1

x_char2 <- c('a','b','c')
x_char2

x_log <- c(TRUE,FALSE,TRUE)
x_log

# los valores dentro los vectores deben ser homogéneos
x_comb <- c(1,"a","c")
x_comb # nos convierte todo a character

x_comb2 <- c(1,"a", TRUE)
x_comb2 # nos convierte todo a character

x_comb3 <- c(1,TRUE,FALSE)
x_comb3 # nos convierte todo a numeric

# Podemos convertir de un tipo de dato a otro, siempre que sea posible
as.logical(x_comb3) # convertimos numeric a logical
as.numeric(x_comb2) # convertimos character a numeric? Nota que se generan datos NA
