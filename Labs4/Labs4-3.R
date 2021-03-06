setwd("C:/Users/danie/Desktop/Programacion/RWorks")
datos <- read.table("fichero_datos_coches.txt", header = T, sep = "\t",dec = ".")
attach(datos)
names(datos)
names(datos)<-c("consumo", "motor", "cv","peso","aceleraci�n","a�o","origen","cilindrada")
names(datos)
attach(datos)
#Apartado A
plot(peso,consumo,main = "Relacion peso-consumo",col = "red")
abline(lm(consumo~peso), col = "black")
#Apartado B
aggregate(peso,list(origen),mean)
plot(origen,peso,main = "Relacion origen-peso",xlab = "origen",ylab = "peso")
abline(lm(peso~origen),col = "purple")

aggregate(aceleraci�n,list(origen),mean)
plot(origen,aceleraci�n,main = "Relacion origen-aceleracion",xlab = "origen",ylab = "aceleracion")
abline(lm(aceleraci�n~origen),col = "purple")
#Apartado C
plot(origen,aceleraci�n,main = "Relacion aceleracion-consumo")
abline(lm(aceleraci�n~consumo),col = "blue")
#Apartado D
plot(cv,consumo,main = "Relacion consumo-cv")
abline(lm(consumo~cv),col = "green")
#Apartado E
japon <- datos[origen == "Jap�n",]
eeuu <- datos[origen == "EE.UU.",]
euro <- datos[origen == "Europa",]
abline(lm(japon$consumo~japon$cv),col = "magenta")
abline(lm(eeuu$consumo~eeuu$cv),col = "pink")
abline(lm(euro$consumo~euro$cv),col = "gold")
