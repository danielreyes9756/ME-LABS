setwd("C:/Users/danie/Desktop/Programacion/RWorks")
set.seed(75)
muestra <- sort(rnorm(100, 0, 1))
#a)
media <- mean(muestra)
media
mediana <- median(muestra)
mediana
sd(muestra)
#b)
p5 <- qnorm(0.05, 0, 1)
p95 <- qnorm(0.95, 0, 1)

limsuperior <- max(muestra)+1
liminferior <- min(muestra)-1
hist(muestra, freq = FALSE, density = 30, angle = 0, col= "blue", 
         border="black", labels = TRUE, main = "Histograma de la muestra", 
         xlab = "Muestra aleatoria", ylab= "Frencuencias")
abline(v= media, col = "red", lwd = 3)
text(media+0.1,0.01, "Media", col = "red", adj = c(0, -.1))
abline(v= mediana, col= "brown", lwd = 3)
text(mediana-0.44, 0.08, "Mediana", col = "brown")
abline(v= p5, col= "darkblue", lwd = 3)
text(p5+0.01, 0.2, "Percentil 5", col = "darkblue", adj = c(0, -.1))
abline(v= p95, col= "hotpink", lwd = 3)
text(p95+0.1, 0.2, "Percentil 95", col = "hotpink", adj = c(0, -.1))

#c)
hist(muestra, freq = FALSE, density = 30, angle = 0, col= "hotpink", 
     border="black", labels = TRUE, main = "Histograma de la muestra", 
     xlab = "Muestra aleatoria", ylab= "Frencuencias")
points(liminferior:limsuperior,dnorm(liminferior:limsuperior, 0, 1),
       col = "purple", type = "b", lwd = 2)
text(-1.4, 0.35, "Función", col = "purple", adj = c(0, -.1))

#d)
library(e1071)
#Coeficiente de Curtosis
kurtosis(muestra)
#Coeficience de Asimetría de Fisher
skewness(muestra)
