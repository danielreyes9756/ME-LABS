
x = seq(-10,10)  # Generamos los números -10, -9,....,9, 10
y = x^2          # Generamos los cuadrados de dichos números
plot(x,y,type = "l")       # Graficamos

p<-c(seq(from = 5, to = 0,by = -1))
vec<-c(0,5,p)
vec2<- p^2
vec3 <-c(0,0,vec2)
polygon(vec,vec3,density = 1000,col ="blue",border = "red")

