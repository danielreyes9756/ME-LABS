datos <- read.table("casas.txt",header = T,dec = ",")
attach(datos)
names(datos)
vector<- array(Precio)
vector

A<-rank(Precio)  #valor en el rango segun el precio
A

B<-sort(Precio) #Ordena de menos a mayor los precios
B

C<-order(Precio)  #Posicion en el array (5,7,4) -> 5 = 1; 7 = 2; 4 = 3;
C

Comparativa<-data.frame(Precio,A,B,C) 
Comparativa
