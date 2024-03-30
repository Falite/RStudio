##### TP03 part 2

# simulation de loi exponentielle

###données
lambda=3
p2=0.3

xp<-seq(0,1,length.out=100)


##exercice1
U=runif(n,0,1)

InvExpo<- function(x){
  return(-1/lambda*log(1-punif(x,0,1)))
}

par(mfrow=c(1,2))
plot(InvExpo(U),col="blue",xlab='valeurs de x',
     ylab='graphe de l\'inverse de exp appliqué à U')
plot(pexp(U,lambda),col='red')



# Définir une valeur pour lambda
lambda <- 2


##exercice2

InvBernoulli<- function(x){
  return(1-p2)
}

plot(U,InvBernoulli(U),col='blue',xlab='valeurs de x',
     ylab='graphe de l\'inverse de Bernoulli appliqué à U')
plot(pbernoulli(p2),col='red')

InvBernoulli <- function(x, p2) {
  u <- runif(length(x), 0, 1)
  return(ifelse(u > 1 - p2, 1, 0))
}

