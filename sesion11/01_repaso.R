# paquete dplyr
## funciones para manipular datos tabulares (data.frame -> tibble)
## filtrar lineas considerando un condicional filter()
## seleccionar las columnas a obtener select()

library(dplyr)
library(palmerpenguins)

data("penguins")

View(penguins)

# seleccionar a los pinguinos hembras
penguins %>%
    filter(sex == "female")

# seleccionar a los pinguinos hembras sólo de la isla Biscoe y colectados en 2007
penguins %>%
    filter(sex == "female",
           island == "Biscoe",
           year == 2007)

# seleccionar a los pinguinos hembras con una masa corporal mayor al promedio
# de todos los pinguinos
penguins %>%
    filter(sex == "female",
           body_mass_g >= mean(body_mass_g,na.rm = TRUE))

# seleccionar a los pinguinos hembras con una masa corporal mayor al promedio
# de solamente las hembras
penguins %>%
    filter(sex == "female") %>%
    filter(body_mass_g >= mean(body_mass_g,na.rm = TRUE))

# seleccionar a los pinguinos hembras con una masa corporal mayor al promedio
# de solamente las hembras; seleccionar solamente las columas especie,
# isla y año
penguins %>%
    filter(sex == "female") %>%
    filter(body_mass_g >= mean(body_mass_g,na.rm = TRUE)) %>%
    select(species,island,year)

# seleccionar a los pinguinos hembras con una masa corporal mayor al promedio
# de solamente las hembras; seleccionar especie y todos los datos del pico
# pista starts_with()
penguins %>%
    filter(sex == "female") %>%
    filter(body_mass_g >= mean(body_mass_g,na.rm = TRUE)) %>%
    select(species,starts_with("bill"))
