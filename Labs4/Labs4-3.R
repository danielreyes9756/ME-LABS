setwd("C:/Users/danie/Desktop/Programacion/RWorks")
datos <- read.table("fichero_datos_coches.txt", header = T, sep = "\t",dec = ".")
attach(datos)
names(datos)
names(datos)<-c("consumo", "motor", "cv","peso","aceleración","año","origen","cilindrada")
names(datos)
attach(datos)
#Apartado A
plot(peso,consumo,main = "Relacion peso-consumo",col = "red")
abline(lm(consumo~peso), col = "black")
#Apartado B
aggregate(peso,list(origen),mean)
plot(origen,peso,main = "Relacion origen-peso",xlab = "origen",ylab = "peso")
abline(lm(peso~origen),col = "purple")

aggregate(aceleración,list(origen),mean)
plot(origen,aceleración,main = "Relacion origen-aceleracion",xlab = "origen",ylab = "aceleracion")
abline(lm(aceleración~origen),col = "purple")
#Apartado C
plot(origen,aceleración,main = "Relacion aceleracion-consumo")
abline(lm(aceleración~consumo),col = "blue")
#Apartado D
plot(cv,consumo,main = "Relacion consumo-cv")
abline(lm(consumo~cv),col = "green")
#Apartado E
japon <- datos[origen == "Japón",]
eeuu <- datos[origen == "EE.UU.",]
euro <- datos[origen == "Europa",]
abline(lm(japon$consumo~japon$cv),col = "magenta")
abline(lm(eeuu$consumo~eeuu$cv),col = "pink")
abline(lm(euro$consumo~euro$cv),col = "gold")
