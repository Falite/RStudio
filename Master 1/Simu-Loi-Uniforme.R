#### Loi Uniforme
#données
a<-0
b<-1

## répartition inverse

InvUnif<- function(x){
  return(a+x*(b-a))
}

## simulation
#nombre n de simulations : 

n<-100
U=runif(n,0,1)

#simulation de la loi et affichage

par(mfrow=c(1,2))
plot(InvUnif(U),col="red",
     ylab="graphe de l'inverse de la loi uniforme appliquée à U")
plot(punif(U,a,b),col="blue",
     ylab="graphe de la loi uniforme")

