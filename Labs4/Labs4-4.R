#EJERCICIO tasas de empleo
#cargamos las librerias necesarias para el desarollo de la practica
library(Matrix)
library(datasets)

#leemos el archivo csv desde el directorio y lo guardamos en una variable (datos), accedemos a sus valores
datos <- read.csv("C:/Users/danie/Desktop/ME2.csv",header = T, sep = ";",dec = "," )
attach(datos)
names(datos)

#Hay que tener en cuenta que la tabla empiezan desde el 
#mas reciente hasta el mas antiguo a si que hay que cambiar los ejes

#apartado a:Analizar gráficamente la variación del empleo en las Islas Canarias en el periodo considerado 
#e intentar explicar sus valores singulares.
#nos creamos un vector que represente la secuencia de 1 al 63 que es basicamente el numero de trimestres
trimestres<-seq(1,63)
CANARIAS <- datos[,"CANARIAS"]
#realizamos un plot del vector CANARIAS que representa a todas las islas 
#el limite establecido para el eje x sera de 0 a 70 para que la grafica quede bien representada
plot(trimestres,CANARIAS,main = "Porcentaje de empleo del T1 cada año" ,xlim=c(0,70),
     xlab = "Trimestres(Del T1-2002 hasta T4-2016)",xaxt="n",
     ylab = "Tasa de empleo",type = "p", col = "gold3")

grid()
#para que no nos saliera en el eje x valores de 0 a 70 usamos el xaxt y ahoa usando la funcion axis
#procederemos a poner los años de  2017 a 2002 de uno en uno
axis(side=1,at=seq(1,63,4),labels=seq(2017,2002,-1))
#Conclusion: Vemos como el empleo en Canarias a principios de año 2002 estaba en auje y que su maximo explendor
#fue por el 2007,pero llega la crisis del 2010 y la tasas de Empleo en Canarias cae en picado
#aunque parece que del 2014 a la actualidad estamos volviendo a levantar cabeza.

#apartado b: Utilizando la librería mgcv(), encontrar un modelo de seguimiento de la tasa de empleo y 
#representar gráficamente su evolución y predicciones (efectuar una posible predicción a junio de 2017). 
#Comparar el resultado con un modelo polinomial (orden 5). 
#instalamos los paquetes necessarrios y cargamos las librerias
library(mgcv)
#creamos el modelo que nos representa las tasas de empleo en Canarias y 
#lo representamos y comparamos con el modelo de orden 5
modelo<-gam(CANARIAS~s(trimestres))
is.vector(CANARIAS)
CANARIAS
#realizamos la grafica y la predicciones que se esperan
xv<-trimestres
yv<-predict(modelo,list(trimestres=xv))
lines(xv,yv,col="turquoise")

#ahora creamos y representamos el modelo de orden 5 y comparamos el modelo de 
#orden 5 con el anterior
modelo2<-lm(CANARIAS~trimestres+I(trimestres^2)+I(trimestres^3)+I(trimestres^4)+I(trimestres^5))
xv2<-trimestres
yv2<-predict(modelo2,list(trimestres=xv2))
lines(xv2,yv2,col="purple")

#apartado c: Encontrar la comarca donde más empleo se ha producido y en qué etapa
#Buscamos el maximo en todas las comarcas
maximo<-apply(datos, 2,max)
maximo
#veamos en cada una de las comarcas cual es su maximo
which.max(maximo)
#Vemos que el maximo se encuentra en FuerteventuraSur
#buscamos en que fecha se encuentra este valor:
max_fecha<-apply(datos, 1,max)
max_fecha
which.max(max_fecha)
#nos sale la fila 46 lo que quiere decir el Segundo trimestre de 2006

#apartado d: ejercicio b pero con la comarca que menos ha generado empleo
#realizamos la misma funcion que el apartado anterior solo que con el minimo
#ahora en lugar de maximo
minimo<-apply(datos,2,min)
minimo
#hallamos el minimo
which.min(minimo)

#Fecha: para ello realizamos un subset
datosmin<-subset(datos,La.Gomera...Norte==33.18)
datosmin
#2014 Primer Trimestre

#apartado e: ) Estudiar la diferencia de tasas de empleo entre las islas más pobladas. 
#para ello realizaremos un plot y veremos las diferencias de tasas de 
#empleo entre las islas mas pobladas (Tenerife y Gran Canaria)
plot(datos$GRAN.CANARIA,xlab = "Trimestres",ylab = "Tasa de Empleo",
     main = "Diferencia de Tasas de Empleo",col="hot pink")
points(datos$TENERIFE,col="turquoise")
#Llegamos a la conclusion de que tenerife posee mayores tasas de empleo que 
#gran canaria actualmente.Pero en epocas anteriores a la crisis 
#vemos como ambas islas poseian unas tasas muy similares
#podemos dedudcir que gran canaria salio mas perjudicada de la crisis que tenerife
