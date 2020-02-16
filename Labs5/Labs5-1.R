setwd("C:/Users/danie/Desktop")
library(MASS)
Datos <- read.table("Datos_Interv_Confianza_Normal.txt", dec = ".", header = TRUE)
#A
ajuste.normal<-fitdistr(Datos$datos,"normal")
ajuste.normal
media <- ajuste.normal$estimate[1]
desvestand <- ajuste.normal$estimate[2]
#B
hist(Datos$datos, freq=FALSE, main="Histograma de la muestra",
     xlab= "Datos", ylab="Densidad",col = "magenta")
lines(17:32, dnorm(17:32, media, desvestand))
#C
#Sí es un buen ajuste ya que sigue la distribución de la muestra
#representada en el histograma
#D
ci<-mean(Datos$datos)-qt(0.975,669)*sd(Datos$datos)/sqrt(670)
ci
cs<-mean(Datos$datos)+qt(0.975, 669)*sd(Datos$datos)/sqrt(670)
cs
#Intervalo para las medias de las distribuciones
cinorm <- qnorm(0.025, 25.1, 2.55)
cinorm
csnorm <- qnorm(0.975, 25.1, 2.55)
