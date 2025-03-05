### Loi Exponentielle 
#données
lambda<-1

#répartition inverse
InvExpo<- function(x){
  return((-1/lambda)*log(1-x) )
}

#simulation
#nombre n de simulations
n<-100
U=runif(n,0,1)

#simumlation de la loi et affichage
par(mfrow=c(1,2))
plot(InvExpo(U),col="red",
     ylab ="simulation de la loi exponentielle via sa répartition inverse")
plot(pexp(U,rate=lambda),col="blue",
     ylab = "simulatiuon de la loi exponentielle via sa répartition implémentée")
