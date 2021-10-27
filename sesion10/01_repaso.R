## filter para filtrar datos (selección de filas)
library(dplyr)
library(palmerpenguins)


View(penguins)
# pipe  %>%

unique(penguins$island)
unique(penguins$species)

# seleccionar a los pinguinos de la isla Dream
penguins %>%
    filter(island == "Dream")

# seleccionar a los pinguinos de la isla Dream y de la especie Chinstrap
penguins %>%
    filter(island == "Dream",
           species == "Chinstrap")

# seleccionar a los pinguinos de la isla Dream y de la especie Chinstrap,
# seleccionar a los pinguinos con un tamaño de aleta mayor a la
# media (promedio) de todos los pinguinos
penguins %>%
    filter(island == "Dream",
           species == "Chinstrap",
           flipper_length_mm > mean(flipper_length_mm, na.rm = TRUE) )

penguins %>%
    filter(flipper_length_mm > mean(flipper_length_mm, na.rm = TRUE)) %>%
    filter(island == "Dream",
           species == "Chinstrap")

# seleccionar a los pinguinos de la isla Dream y de la especie Chinstrap,
# seleccionar a los pinguinos con un tamaño de aleta mayor a la
# media (promedio) de los pinguinos Chinstrap
penguins %>%
    filter(island == "Dream",
           species == "Chinstrap") %>%
    filter(flipper_length_mm > mean(flipper_length_mm))

