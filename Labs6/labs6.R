library(MASS)

matrix1 <- matrix(c(43,44,36,16),nrow = 2,byrow = F)
sum(matrix1)
colnames(matrix1)<-c("Hombres","Mujeres")
rownames(matrix1) <- c("Diestr@s","Zurd@s")
matrix1
#calculo estadistico
matrix2 <- matrix(c(43/79*43/87,44/60*44/87,36/79*36/52,16/60*16/52),ncol = 2)
colnames(matrix2)<-c("Hombres","Mujeres")
rownames(matrix2) <- c("Diestr@s","Zurd@s")
matrix2

CHI2 <- 139*(sum(matrix2)-1)
CHI2

gl<-(nrow(matrix2)-1)*(ncol(matrix2)-1)
gl

qchisq(0.95,gl)
matriz_esperada<-(1/139)*matrix(c((79)*(87),(60)*(87),
                                  (79)*(52),(60)*(52)),ncol = 2,nrow = 2)
colnames(matriz_esperada)<-c("Hombres","Mujeres")
rownames(matriz_esperada) <- c("Diestr@s","Zurd@s")
matriz_esperada

chisq.test(matrix1,correct = F)
testvalue <- chisq.test(matrix1,correct = F)
testvalue$observed
testvalue$expected
testvalue$residuals
#Con correct
testvalue2 <- chisq.test(matrix1)
testvalue2
testvalue$observed
testvalue$expected
contador <- 0 
for(i in 1:2){
  for(j in 1:2) {
    contador = contador + (abs(matrix1[i,j] - matriz_esperada[i,j])-0.5)^2/matriz_esperada[i,j]
  }
}
contador
###############################################################################################
matriz1 <- matrix(c(120,88,112,130),nrow = 2,byrow = F)
sum(matriz1)
colnames(matriz1)<-c("Hombres","Mujeres")
rownames(matriz1) <- c("Fuma","No fuma")
matriz1

matrizDesarrollo <- matrix(c(120/232*120/208,88/232*88/218,112/232*112/242,130/210*130/242),ncol = 2)
colnames(matrizDesarrollo)<-c("Hombres","Mujeres")
rownames(matrizDesarrollo)<- c("Fuma","No fuma")
matrizDesarrollo

CHI2 <- 450*(sum(matrizDesarrollo)-1)
CHI2

gl<-(nrow(matrizDesarrollo)-1)*(ncol(matrizDesarrollo)-1)
gl

qchisq(0.95,gl)

matriz_esperada<-(1/450)*matrix(c((232)*(208),(218)*(208),
                                (232)*(242),(218)*(242)),ncol = 2,nrow = 2)
colnames(matriz_esperada)<-c("Hombres","Mujeres")
rownames(matriz_esperada)<-c("Fuma","No fuma")
matriz_esperada
chisq.test(matriz1,correct = F)
testvalue <- chisq.test(matriz1,correct = F)
testvalue$observed
testvalue$expected
testvalue2 <- chisq.test(matriz1)
testvalue$observed
testvalue$expected
contador <- 0 
for(i in 1:2){
  for(j in 1:2) {
    contador = contador + (abs(matriz1[i,j] - matriz_esperada[i,j])-0.5)^2/matriz_esperada[i,j]
  }
}
contador
############################################################################################
tratamiento1 <-c(15,16,21,17,38,42,10,23,35,28)
tratamiento2 <-c(21,18,42,25,14,52,65,40,43,35,18,56,29,32,44,15,15,68,41,43,58)
Tratamientos <- c(tratamiento1,tratamiento2)
N1 <- length(tratamiento1)
N2 <- length(tratamiento2)
Tratamientosi<-c(rep(1,N1),rep(2,N2))
Tratamientosor<-(order(Tratamientos))
trat <- Tratamientosi[Tratamientosor]
trat
orden <- seq(1,N1+N2); orden
ordenado<-sort(Tratamientos);ordenado
nuevoOrden<-orden
i=1
while (i <= length(orden)){
  j=0
  mu0=orden[i]
  while((ordenado[i+j]== ordenado[i+j+1]) && (i<length(orden)))
  {
    mu0=mu0+orden[i+j+1]; j=j+1
  }
  k=i
  while(k <= i+j) {
    nuevoOrden[k]=mu0/(j+1)
    k=k+1
  }
  i=i+j+1
}
Orden<-nuevoOrden; Orden
R1<-sum(Orden[trat==1]);R1
R2<-sum(Orden[trat==2]);R2
U1<-N1*N2+(N1*((N1+1)/2))-R1; U1
U2<-N1*N2+N2*(N2+1)/2-R2
U2
U=min(U1,U2); U


wilcox.test(tratamiento1,tratamiento2,conf.int = T)

muU = N1*N2/2; muU
sigmamucuadradro = (N1*N2*(N1+N2+1))/12
sigmaMu <- sqrt(sigmamucuadradro)
Z <- (U-muU)/sigmaMu ; Z
#aunque la equivalencia es valida no la tomamos como valida

testvalue<-t.test(tratamiento1,tratamiento2)
testvalue
# aqui vemos como esta equivalencia no son reales 
