######### Modèle statistique de la loi normale #########

LVNorm<-function(X){
  m<-X[1]
  varphi2<-X[2]
  sum(dnorm(pluie1,m,varphi2,log=TRUE))
}

