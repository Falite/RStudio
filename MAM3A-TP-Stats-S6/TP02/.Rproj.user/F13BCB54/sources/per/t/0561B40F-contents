######### Modèle statistique Gamma #########

LVGam<-function(X){
  sum(dgamma(pluie1,shape=X[1],scale=X[2],log=TRUE))
}

init_vec<-c(mean(pluie1)**2/var(pluie1),var(pluie1)/mean(pluie1))
init_vec

emv_gam<-optim(init_vec,LVGam,control=list(fnscale=-1,trace=4))
