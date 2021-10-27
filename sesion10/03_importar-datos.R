# importar una tabla
mitabla <- read.csv("penguins.csv")

# exportar
write.table(penguins,"penguins.txt",
            quote = FALSE,sep = "\t",
            row.names = FALSE)

write.table(penguins,"penguins.txt")
