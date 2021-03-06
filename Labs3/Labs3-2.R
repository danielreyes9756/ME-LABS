setwd("C:/Users/danie/Desktop/Programacion/RWorks")
ToothGrowth
data(ToothGrowth)
datos <- as.data.frame(ToothGrowth)
datos
# a)
names(datos) <- c("longitud", "suplemento" , "dosificación")
datos
attach(datos)
# b)
tapply(longitud,dosificación,mean)
tapply(longitud,dosificación,var)
tapply(longitud,suplemento,mean)
tapply(longitud,suplemento,var)
# c)
tapply(longitud,dosificación,quantile)
tapply(longitud,dosificación,min)
tapply(longitud,dosificación,max)
boxplot(longitud~dosificación,col = "purple")
# d)
boxplot(longitud~(suplemento+dosificación), col = "blue")
# e)
cor(longitud,dosificación)
plot(dosificación[suplemento == "VC"],longitud[suplemento == "VC"],xlim = c(0,3),col = "blue")
modeloVC <- lm(longitud[suplemento == "VC"]~dosificación[suplemento == "VC"])
abline(modeloVC)
modeloOJ <-lm(longitud[suplemento == "OJ"]~dosificación[suplemento == "OJ"])
abline(modeloOJ,col = "red")
points(dosificación[suplemento == "OJ"],longitud[suplemento == "OJ"],col = "red")
