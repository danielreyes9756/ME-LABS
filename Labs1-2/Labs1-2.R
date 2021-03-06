setwd("C:/Users/danie/Desktop/Programacion/RWorks")
#Ejercicio 2: Analizar el contenido del Data Set "iris" de R con los comandos tail() y head() y listar las filas 10 a 15.
attach(iris)

tail(iris)
head(iris)
iris[10:15,]
# a) Razonar sobre los tipos de datos que lo integran (factores y vectores)
#   Species es de tipo factor el resto vector numerico

# b) Cambiar los nombres de los vectores y factores para pasarlos al castellano
names(iris) <- c("Longitud.S�palo","Ancho.S�palo","Longitud.P�talo","Ancho.P�talo","Especies")
names(iris)

detach(iris) #detach y attach para volver a cargar los elemntos ya que han sido modificados
attach(iris)

# c) Encontrar las medias, medianas y desviaciones est�ndar de las longitudes y ancho de p�talos por especie.
tapply(Longitud.P�talo,Especies,mean)
tapply(Longitud.P�talo,Especies,median)
tapply(Longitud.P�talo,Especies,sd)

tapply(Ancho.P�talo,Especies,mean)
tapply(Ancho.P�talo,Especies,median)
tapply(Ancho.P�talo,Especies,sd)

# d) Visualizar utilizando boxplot() las variaciones de longitud de s�palos y p�talos por especie.

boxplot(Longitud.P�talo~Especies,density = 1000,col = "purple",border = "black")
boxplot((Longitud.S�palo~Especies),density = 1000,col = "purple", border ="black")

# e) Obtener un vector de longitudes de s�palos de la especie "virginica" utilizando operadores l�gicos
vector<-subset(iris,Especies == "virginica",Longitud.S�palo)
vector
