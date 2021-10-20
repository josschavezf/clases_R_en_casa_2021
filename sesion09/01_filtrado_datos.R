# install.packages("dplyr") para manejo de tablas
library(dplyr)
library(palmerpenguins)

View(penguins)
penguins

# pipe (una accción después de otra); toma el resultado de una primer función
# y lo usa como entrada para una segunda función

penguins %>% View()

head(penguins)

penguins %>%
    head()

tail(penguins)

penguins %>%
    tail()

# filter para filtrar lineas/renglones/rows (contenido de la tabla)

## seleccionar a los pinguinos de la especie Adelie e imprimir todas las
## columnas
penguins[penguins$species == "Adelie",]

subset(penguins,species == "Adelie")

filter(penguins,species == "Adelie")

## usando pipe y filter
penguins %>%
    filter(species == "Adelie",
           island == "Torgersen") %>%
    View()

## seleccionar a los pinguinos con masa corporal mayor a 3000g
penguins %>%
    filter(body_mass_g >= 3000)

## seleccionar a los pinguinos con masa corporal mayor a 3000g y
## de la especie Chinstrap
penguins %>%
    filter(body_mass_g >= 3000,
           species == "Chinstrap") %>%
    View()

## seleccionar a los pinguinos con masa corporal mayor a 3000g y
## de la especie Chinstrap
penguins %>%
    filter(body_mass_g >= 3000,
           species == "Chinstrap") %>%
    tail(10)

penguins %>%
    filter(body_mass_g >= 3000,
           species == "Chinstrap") %>%
    head(10)


## seleccionar a los pinguinos con una masa corporal
## mayor al promedio (media)
x1 <- c(1,2,3,4,5,NA,NA,NA)
x2 <- c(1,2,3,4,5,0,0,0)
median(x1,na.rm = TRUE)
median(x2)

### usando un paso previo
promedio_peso <- mean(penguins$body_mass_g, na.rm = TRUE)
promedio_peso

penguins %>%
    filter(body_mass_g >= promedio_peso)

### usando directo la funcion mean
penguins %>%
    filter(body_mass_g >= mean(body_mass_g, na.rm = TRUE))

## seleccionar a los pinguinos con largo del pico menor a la mediana
penguins %>%
    filter(bill_length_mm <= median(bill_length_mm,na.rm = TRUE))

## seleccionar a los pinguinos Adelie con largo del pico menor a la mediana
## de los pinguinos Adelie
penguins %>%
    filter(species == "Adelie") %>%
    filter(bill_length_mm <= median(bill_length_mm,na.rm = TRUE)) %>%
    nrow()

penguins %>%
    filter(species == "Adelie",
           bill_length_mm <= median(bill_length_mm,na.rm = TRUE) ) %>%
    nrow()

penguins %>%
    filter(is.na(bill_length_mm),
           is.na(bill_depth_mm),
           is.na(year))


# select para seleccionar columnas



# mutate para modificar o agregar columnas


# arrange para ordenar la tabla basada en el contenido de una columna


# summarise para generar resúmen de la tabla

