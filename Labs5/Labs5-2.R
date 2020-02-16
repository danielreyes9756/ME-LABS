setwd("C:/Users/danie/Desktop")
Datos <- read.table("herramienta.txt", dec = ",", header = TRUE)

SinHerramientas <- Datos$Sin.herramienta
hist(SinHerramientas, labels=TRUE,col="green", density=10, angle = 45, border = "brown")
ConHerramientas <- Datos$Con.herramienta
hist(ConHerramientas, col="yellow", labels=TRUE, density=10, angle = 45, border = "blue")

#Trabajadores distintos
t.test(x=SinHerramientas, y=ConHerramientas, alternative="greater",mu=0)

#Trabajadores iguales
t.test(x=SinHerramientas, y=ConHerramientas, alternative="greater",mu=0, paired = TRUE)
