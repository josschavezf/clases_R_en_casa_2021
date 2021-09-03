# vectores
x <-  5
x <- 10
x

variable <- "Esta es una frase"
variable

mi_Variable <-  'Esta es una frase'
mi_Variable

mi_vector_numerico <- c(1, 2, 3)
mi_vector_caracter <- c("1","2","3")
mi_vector_caracter2 <- c("a", "b", "c")
mi_vector_caracter3 <- c("esta es una frase", "esta es otra", "esta es una más",
  "esta es una más", "esta es una más", "esta es una más")
mi_vector_caracter3

# generando vectores vacíos
mi_vector_vacio <- c()
mi_vector_vacio_numerico <- numeric()
mi_vector_vacio_caracter <- character()

# operaciones con vectores
mis_numeros_a <- c(1,2,3)
mis_numeros_b <- c(4,5,6)

# suma
mis_numeros_a + mis_numeros_b

# usando vectores de longitud diferente
mis_numeros_a <- c(1,2,3)
mis_numeros_c <- c(1,2)

mis_numeros_a + mis_numeros_c
mis_numeros_a * mis_numeros_c

mis_numeros_ab <- c(mis_numeros_a, mis_numeros_b)
mis_numeros_ab
mis_numeros_ba <- c(mis_numeros_b,mis_numeros_a)
mis_numeros_ba
mis_numeros_aa <- c(mis_numeros_a,mis_numeros_a)
mis_numeros_aa

# ordenar los valores de un vector
mis_numeros_ba
sort(mis_numeros_ba)
mis_numeros_ba_ordernados <- sort(mis_numeros_ba)
mis_numeros_ba_ordernados
mis_numeros_ba <- sort(mis_numeros_ba)
mis_numeros_ba

mis_letras_desordenadas <- c("b","c","a")
mis_letras_desordenadas

sort(mis_letras_desordenadas)
mis_letras_reordenadas <- sort(mis_letras_desordenadas)
mis_letras_reordenadas

mis_palabras_desordenadas <- c("uno","dos","tres")
mis_palabras_desordenadas
sort(mis_palabras_desordenadas)
mis_palabras_ordenadas <- sort(mis_palabras_desordenadas)
mis_palabras_ordenadas

# orden reverso
mis_numeros_ba
rev(mis_numeros_ba)

mis_numeros_ba
sort(mis_numeros_ba)
sort(mis_numeros_ba, decreasing = TRUE)

mis_letras_desordenadas
sort(mis_letras_desordenadas)
sort(mis_letras_desordenadas, decreasing = TRUE)
mis_letras_desordenadas
rev(mis_letras_desordenadas)

# buscando ayuda
?sort
help("sort")
?rev
help("rev")

# accediendo a los elementos de un vector
## usando las posiciones
mis_letras_reordenadas[1]
mis_letras_reordenadas[3]

mis_letras_reordenadas[1:2]
mis_letras_reordenadas[2:3]

mis_letras_reordenadas[c(1,3)]

mis_numeros_ab[c(1,4,6)]
mis_numeros_ab[1:4]
mis_numeros_ab[c(1,4:6)]

## usando names
names(mis_letras_reordenadas) <- c("miletra_a","miletra_b","miletra_c")
mis_letras_reordenadas

names(mis_letras_reordenadas)
mis_letras_reordenadas["miletra_a"]
mis_letras_reordenadas[c("miletra_a","miletra_c")]

names(mis_letras_desordenadas) <- mis_letras_desordenadas
names(mis_letras_desordenadas)
mis_letras_desordenadas

mis_letras_desordenadas[2]
mis_letras_desordenadas["a"]
mis_letras_desordenadas["c"]

# haciendo secuencias
1:200

mis_numeros_1_200 <- 1:200
mis_numeros_1_200

class(1:5)
class(mis_letras_desordenadas)
as.character(1:5)

names(mis_numeros_1_200) <- as.character(201:400)

mis_numeros_1_200
names(mis_numeros_1_200)

mis_numeros_1_200[100] # posicion
mis_numeros_1_200["300"] # nombre

mis_numeros_1_200[50]
mis_numeros_1_200["250"]

mis_numeros_1_200["330"]

letters # imprime el abecedario
letters[1:10] # imprime las primeras 10 letras
length(letters) # la longitud de letters

# invertir el orden
rev(letters[1:10])
letters[17:26]
rev(letters)
class(rev(letters)) # preguntar la clase

# selección de las últimas 10 letras
rev(letters)[1:10] # opcion 1
sort(rev(letters)[1:10]) # opcion 2
rev(rev(letters)[1:10]) # opcion 3
sort(sort(letters,decreasing = TRUE)[1:10]) # opcion 4
rev(sort(letters,decreasing = TRUE)[1:10]) # oopcion 5
