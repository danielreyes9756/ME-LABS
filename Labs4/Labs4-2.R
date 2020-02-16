setwd("C:/Users/danie/Desktop/Programacion/RWorks")
#A)
datos <- read.table("scatter1.txt", header = T, sep = "\t",dec = ".")
attach(datos)
names(datos)
plot(xv,ys,col= "grey", xlab = "Variable Explicativa", ylab = "Variable Respuesta",main = "scatter1")
abline(lm(ys~xv))
#B)
datos2 <- read.table("scatter2.txt", header = T, sep = "\t",dec = ".")
attach(datos2)
names(datos2)

points(xv2,ys2,col= "pink", pch=20)
abline(lm(ys2~xv2), col= "pink")

range(c(xv,xv2))

range(ys,ys2)

plot(c(xv,xv2),c(ys,ys2), xlim=c(0,100), ylim=c(0,70), type="n", xlab = "Variable
Explicativa", ylab = "Variable Respuesta" , main = "scatter2")
points(xv,ys,col= "red")
points(xv2,ys2,col= "gold", pch=16)
abline(lm(ys~xv))
abline(lm(ys2~xv2), col= "blue")

par(mfrow=c(1,2))
plot(xv,ys,col= "grey", xlab = "Variable Explicativa", ylab = "Variable Respuesta",main = "scatter1")
abline(lm(ys~xv))
points(xv2,ys2,col= "pink", pch=20)
abline(lm(ys2~xv2), col= "pink")

range(c(xv,xv2))

range(ys,ys2)

plot(c(xv,xv2),c(ys,ys2), xlim=c(0,100), ylim=c(0,70), type="n", xlab = "Variable
Explicativa", ylab = "Variable Respuesta" , main = "scatter2")
points(xv,ys,col= "red")
points(xv2,ys2,col= "gold", pch=16)
abline(lm(ys~xv))
abline(lm(ys2~xv2), col= "blue")

