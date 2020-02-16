setwd("C:/Users/danie/Desktop/Programacion/RWorks")
#Ejercicio 2: Analizar el contenido del Data Set "iris" de R con los comandos tail() y head() y listar las filas 10 a 15.
attach(iris)

tail(iris)
head(iris)
iris[10:15,]
# a) Razonar sobre los tipos de datos que lo integran (factores y vectores)
#   Species es de tipo factor el resto vector numerico

# b) Cambiar los nombres de los vectores y factores para pasarlos al castellano
names(iris) <- c("Longitud.Sépalo","Ancho.Sépalo","Longitud.Pétalo","Ancho.Pétalo","Especies")
names(iris)

detach(iris) #detach y attach para volver a cargar los elemntos ya que han sido modificados
attach(iris)

# c) Encontrar las medias, medianas y desviaciones estándar de las longitudes y ancho de pétalos por especie.
tapply(Longitud.Pétalo,Especies,mean)
tapply(Longitud.Pétalo,Especies,median)
tapply(Longitud.Pétalo,Especies,sd)

tapply(Ancho.Pétalo,Especies,mean)
tapply(Ancho.Pétalo,Especies,median)
tapply(Ancho.Pétalo,Especies,sd)

# d) Visualizar utilizando boxplot() las variaciones de longitud de sépalos y pétalos por especie.

boxplot(Longitud.Pétalo~Especies,density = 1000,col = "purple",border = "black")
boxplot((Longitud.Sépalo~Especies),density = 1000,col = "purple", border ="black")

# e) Obtener un vector de longitudes de sépalos de la especie "virginica" utilizando operadores lógicos
vector<-subset(iris,Especies == "virginica",Longitud.Sépalo)
vector
