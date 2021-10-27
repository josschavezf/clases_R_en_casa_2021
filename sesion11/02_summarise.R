# summarise sirve para obtener datos de "resumen" de todos los datos de la tabla
# principalmente operaciones matemáticas

summary(penguins)
summary(penguins$body_mass_g)

mean(penguins$body_mass_g,na.rm = TRUE)

penguins %>%
    summarise(promedio_masa = mean(body_mass_g,na.rm = TRUE),
              mediana_masa = median(body_mass_g,na.rm = TRUE),
              minimo = min(body_mass_g,na.rm = TRUE),
              maximo = max(body_mass_g,na.rm = TRUE)) %>%
    select(minimo,maximo)

# group_by nos ayuda a agrupar considerando los valores de una columa (categóricos)
levels(penguins$species) # cuántas especies diferentes hay en el tibble, sólo funciona con factores
unique(penguins$species) # cuántas especies diferentes hay en el tibble, funciona con caracteres y números
unique(penguins$year)

# saber el promedio de la masa corporal de cada especie de pinguinos

penguins %>%
    filter(species == "Adelie") %>%
    summarise(promedio = mean(body_mass_g, na.rm = TRUE))

penguins %>%
    filter(species == "Chinstrap") %>%
    summarise(promedio = mean(body_mass_g, na.rm = TRUE))

penguins %>%
    filter(species == "Gentoo") %>%
    summarise(promedio = mean(body_mass_g, na.rm = TRUE))

## usando group_by
penguins %>%
    group_by(species) %>%
    summarise(promedio_masa_corporal = mean(body_mass_g,na.rm = TRUE))

# conocer el promedio del largo de pico para cada especie
penguins %>%
    group_by(species) %>%
    summarise(promedio_largo_pico = mean(bill_length_mm,na.rm = TRUE))

# usar múltiples columnas para agrupar

## conocer el promedio del largo de pico para cada especie e isla
penguins %>%
    group_by(species,island) %>%
    summarise(promedio_largo_pico = mean(bill_length_mm,na.rm = TRUE))

## conocer el valor máximo del largo de aleta para cada especie en cada isla
penguins %>%
    group_by(species,island) %>%
    summarise(maximo_largo_aleta = max(flipper_length_mm,na.rm = TRUE))

## conocer el valor máximo, el mínimo y el promedio del largo de aleta
## para cada especie en cada isla
penguins %>%
    group_by(species,island) %>%
    summarise(maximo_largo_aleta = max(flipper_length_mm,na.rm = TRUE),
              minimo_largo_aleta = min(flipper_length_mm,na.rm = TRUE),
              promedio_aleta = mean(flipper_length_mm,na.rm = TRUE) )

# conocer el valor máximo de la masa corporal para cada especie y sexo,
# pero sólo de las especies Adelie y Chinstrap

# forma 1 es filter y luego summarise

## forma 1
penguins %>%
    filter(species != "Gentoo") %>%
    group_by(species,sex) %>%
    summarise(maximo_masa_corporal = max(body_mass_g,na.rm = TRUE))

## forma 2
penguins %>%
    filter(species %in% c("Adelie","Chinstrap")) %>%
    group_by(species,sex) %>%
    summarise(maximo_masa_corporal = max(body_mass_g,na.rm = TRUE))

# primero summarise y luego filter
penguins %>%
    group_by(species,sex) %>%
    summarise(maximo_masa_corporal = max(body_mass_g,na.rm = TRUE)) %>%
    filter(species %in% c("Adelie","Chinstrap"))

penguins %>%
    group_by(species,sex) %>%
    summarise(maximo_masa_corporal = max(body_mass_g,na.rm = TRUE)) %>%
    filter(species != "Gentoo")

## conocer el valor mínimo del largo de aleta para cada sexo y año
## pero sólo para el 2007 y 2008
penguins %>%
    filter(year %in% c(2007,2008)) %>%
    group_by(year,sex) %>%
    summarise(minimo_largo_aleta = min(flipper_length_mm,na.rm = TRUE))

penguins %>%
    filter(year %in% c(2007,2008)) %>%
    group_by(sex,year) %>%
    summarise(minimo_largo_aleta = min(flipper_length_mm,na.rm = TRUE))

## obtener el resultado sin los NA de sex

penguins %>%
    filter(year != 2009,
           is.na(sex) == FALSE) %>%
    group_by(sex,year) %>%
    summarise(minimo_largo_aleta = min(flipper_length_mm,na.rm = TRUE))

penguins %>%
    filter(year %in% c(2007,2008),
           is.na(sex) == FALSE )%>%
    group_by(sex,year) %>%
    summarise(minimo_largo_aleta = min(flipper_length_mm,na.rm = TRUE))

penguins %>%
    group_by(sex,year) %>%
    summarise(minimo_largo_aleta = min(flipper_length_mm,na.rm = TRUE)) %>%
    filter(year != 2009,
           sex != "NA")





