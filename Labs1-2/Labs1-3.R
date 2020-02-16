setwd("C:/Users/danie/Desktop/Programacion/RWorks")
# Ejercicio 3: Utilizar la siguiente secuencia de comandos para leer el fichero "daphnia.txt". 
datos<-read.table("daphnia.txt",header = TRUE)
attach(datos)
names(datos)

# a) Analizar el contenido del Data Frame "datos" con los comandos tail() y head()
tail(datos)
head(datos)
# b) Razonar sobre los tipos de datos que lo integran (factores y vectores).
#    3 de tipo factor(water,detergent,daphnia) y una de tipo array(Growth.rate)

# c) Encontrar las medias, medianas y desviaciones estándar de la variable "Growth.rate" 
#    por cada variable categórica utilizando tapply() y agregate().
tapply(Growth.rate,Water,mean)
tapply(Growth.rate,Water,median)
tapply(Growth.rate,Water,sd)

tapply(Growth.rate,Detergent,mean)
tapply(Growth.rate,Detergent,median)
tapply(Growth.rate,Detergent,sd)

tapply(Growth.rate,Daphnia,mean)
tapply(Growth.rate,Daphnia,median)
tapply(Growth.rate,Daphnia,sd)

aggregate(cbind(Growth.rate)~Daphnia+Water+Detergent,datos,mean)
# d) Visualizar utilizando boxplot() las variaciones de "Growth.rate" dependiendo del tipo de agua, detergente y clon.
boxplot((Growth.rate)~Water+Daphnia+Detergent) 