fac1<- function(x) {
  f<-1
  if (x<2) return (1)
  for( i in 2:x) {
    f<- f*i}
  f}


fac2 <- function(x) {
  f <- 1
  if (x<2) return (1)
  i <- 1
  while(i <= x) {
    f <- f*i
    i <- i+1}
  f}

sapply(0:5,fac1)
sapply(0:5,fac2)