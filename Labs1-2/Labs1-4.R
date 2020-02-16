setwd("C:/Users/danie/Desktop/Programacion/RWorks")

# Ejercicio 4: Utilizar el Data Set "HairEyeColor" de R...

datos<- as.data.frame(HairEyeColor)
attach(datos)
str(datos)
summary(datos)

HairEyeColor
#a) Proporcion de hombres y mujeres

sum(HairEyeColor) #total de personas
sum(HairEyeColor[,,"Male"]) #proporcion de hombres
sum(HairEyeColor[,,"Female"]) #proporcion de mujeres
sum(Freq) #lo mismo que sum(HairEyeColor)

#b) Proporcion de hombres con ojos azules
sum(HairEyeColor[,"Blue","Male"])

#c) Proporcion de mujeres con pelo marron y ojos azules 
sum(HairEyeColor["Brown","Blue","Female"])

#d) Examinar la función de visualización "pie()" y dibujar con ella un diagrama donde
#se muestre la distribución de los colores de cabello en dos gráficas de mujeres y hombres

vector <- c(sum(HairEyeColor["Brown",,"Female"]),sum(HairEyeColor["Black",,"Female"]),
            sum(HairEyeColor["Red",,"Female"]),sum(HairEyeColor["Blond",,"Female"]))

colors <- c("brown", "black", "red", "yellow")

pie(vector, labels = c("Brown","Black","Red","Blond"),col = colors,main = "Color de pelo mujeres")

vector2 <- c(sum(HairEyeColor["Black",,"Male"]),sum(HairEyeColor["Brown",,"Male"]),
            sum(HairEyeColor["Blond",,"Male"]),sum(HairEyeColor["Red",,"Male"]))

colors2 <- c("black","brown", "yellow","red")

pie(vector, labels = c("Black","Brown","Blond","Red"),col = colors2,main = "Color de pelo hombres")
