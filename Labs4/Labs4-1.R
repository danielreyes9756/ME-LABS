#A)
#Cargamos el archivo, accedemos a los valores del archivo e importamos la libreria pyramid para poder usarlas
datos <- read.csv("C:/Users/danie/Desktop/Medata2002.csv",sep = ";",dec = "." )
attach(datos)
names(datos)
library(pyramid)
#Usamos el par para poder ver ambas graficas al mismo tiempo 
par(mfrow=c(1,2)) 
#Guardamos en un datframe los valores de la piramide separados por sexos(Hombre, Mujer) y edades(Rango)
#y usamos el comando pyramid para sacar por pantalla la piramide
piramide<-data.frame(Hombre,Mujer,Rango)
pyramid(piramide, Llab="Hombres", Rlab="Mujeres", Clab="Edad",main = "Piramide2002")

#B)
#Repetimos el proceso anterior
datos2 <- read.csv("C:/Users/danie/Desktop/Medata2016.csv",sep = ";",dec = "." )
attach(datos2)
names(datos2)
piramide2<-data.frame(Hombre,Mujer,Rango)
pyramid(piramide2, Llab="Hombres", Rlab="Mujeres", Clab="Edad", main = "Piramide2016" )

#Por si no se viera bien
par(mfrow=c(1,1))
pyramid(piramide, Llab="Hombres", Rlab="Mujeres", Clab="Edad",main = "Piramide2002")
pyramid(piramide2, Llab="Hombres", Rlab="Mujeres", Clab="Edad", main = "Piramide2016")
