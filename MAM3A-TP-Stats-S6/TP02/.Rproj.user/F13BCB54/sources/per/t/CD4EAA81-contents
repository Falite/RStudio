######### modèle statistique de Weibull et Fréchet #########

#fonctions qui calculent la log vraisemblance de pluie1 grace à weibulle et frechet
LVWei<-function(X){
  k<-X[1]
  lambda<-X[2]
  sum(dweibull(pluie1,shape=k,scale=lambda,log=TRUE))
}

LVFre<-function(X){
  alpha=X[1]
  s=X[2]
  sum(dfrechet(pluie1,shape=alpha,scale=s,log=TRUE))
}

#on  calcule le max de vraisemblance
#par défaut optim minimise , on met un control= pour changer
emv_wei<-optim(c(0.5,0.5), LVWei , control=list(fnscale=-1))
emv_fre<-optim(c(0.5,0.5), LVFre , control=list(fnscale=-1))
emv_fre
emv_wei
