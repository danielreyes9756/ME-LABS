setwd("C:/Users/danie/Desktop/Programacion/RWorks")
datos <- read.table("gusanos.txt",header = TRUE,dec = ".")
datos2 <- read.table("gusanos_na.txt",header = TRUE,dec = ".")

attach(datos)
names(datos)

tapply(Densidad.gusanos,Vegetacion,mean)
tapply(Area,Pendiente,sd)

modelo <-lm(Densidad.gusanos[order(pH.Suelo)]~sort(pH.Suelo))
plot(pH.Suelo,Densidad.gusanos)
abline(modelo)

x <- data.frame(datos)
datosordenados <- x[order(Area),]
datosordenados

boxplot(Densidad.gusanos~Humedo, col = "orange" , xlab = "Humedad", ylab = "Densidad de Gusanos")