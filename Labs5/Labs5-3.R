#A
metodoI<-c(15,16,14,15,17)
metodoII<-c(14,13,15,16,14)
metodoIII<-c(13,12,11,14,11)

n <-length(metodoI)
y <- c(metodoI,metodoII,metodoIII)

meany <- mean(y)
STC<-sum((y-meany)^2);STC

SCT <- n*((mean(metodoI)-meany)^2+(mean(metodoII)-meany)^2+(mean(metodoIII)-meany)^2)
SCT

SCE<-STC-SCT;SCE

s12<-SCT/2;s12

s2<-SCE/(12);s2

FA<-s12/s2;FA

qf(0.95,2,12)
#Se rechaza ya que la H0 o Hipotesis nula ya que  FA > 3.885294

datos<-data.frame(time=c(metodoI,metodoII,metodoIII))
grupo = factor(c(rep(1,n),rep(2,n),rep(3,n)))
attach(datos)
ANOVA<-aov(time~grupo,data = datos)
summary(ANOVA)
qf(0.95,2,12)
#B
xdatos<-data.frame(metodoI,metodoII,metodoIII)
boxplot(xdatos,col = "gold",ylab="Tiempo(min)",xlab="Rendimiento en % segun el metodo de entrenamiento",staplewex=1,border = "brown")
grid()
#el metodoIII es el metodo superior, debido a que es el que muestra un mejor resultado de los tres metodos
