library(dplyr)
library(palmerpenguins)

# select es para seleccionar columnas

penguins[,c("species","island")]
x <- c(1,2,3)
x

# seleccionar solamente a especies, e isla
penguins %>%
    select(species,island)

# seleccionar el año de colecta, la isla y especies
penguins[,c("island","species")]

penguins %>%
    select(year,island,species)

penguins %>%
    select(bill_length_mm,bill_depth_mm)

# seleccionar todas las columnas del pico
penguins %>%
    select(starts_with("bill"))

# seleccionar la columna de especie, todas las del pico y luego a isla
penguins %>%
    select(species, starts_with("bill"), island)

penguins %>%
    select(starts_with("bill"), species, island)


# seleccionar a los pinguinos de la especie Adelie, con un tamaño de aleta
# menor al promedio e imprimir solo su especie y sexo
penguins %>%
    filter(species == "Adelie",
           flipper_length_mm < mean(flipper_length_mm,na.rm = TRUE)) %>%
    select(species,sex)

# seleccionar a los pinguinos de la isla Torgersen,
# con un ancho de pico mayor a la mediana de todos
# los pinguinos e imprimir
# la especie y todos los datos del pico
penguins %>%
    filter(island == "Torgersen",
           bill_depth_mm >= median(bill_depth_mm,na.rm = TRUE)) %>%
    select(species,starts_with("bill"))

# seleccionar a los pinguinos machos, con un ancho de pico
# y largo de pico mayor a la media de sólo los machos e
# imprimir la especie, el sexo y año de colecta
penguins %>%
    filter(sex == "male") %>%
    filter(bill_length_mm > mean(bill_length_mm,na.rm = "TRUE"),
           bill_depth_mm > mean(bill_depth_mm,na.rm = TRUE)) %>%
    select(species, sex, year)











