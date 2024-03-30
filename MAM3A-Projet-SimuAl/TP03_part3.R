#### TP03 part 3 : Méthode de Box Muller

## Exercice 2 question 2
##données
n<-10000

X1<-function(x){
  return( sqrt(2*rexp(x,1))*cos(2*pi*runif(x,0,1)))
}
X2<-function(x){
  return(sqrt(2*rexp(x,1))*sin(2*pi*runif(x,0,1)))
}

X2(n); X1(n)

Y1<-rnorm(n)
Y2<-rnorm(n)

par(mfrow=c(1,2))
plot(X1(n),X2(n),xlab="X1",ylab="X2",
     main="résultat de la simulation")
plot(Y1,Y2,main="N(O,I2)")

#end