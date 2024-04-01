#exercice5

#we have X1…Xn admit a density : ft_heta(x)=1/2sqrt(x*theta) for x in [0,theta]
#[…] after calculations , X1…Xn admit this distribution : F_theta(x)=sqrt(x/theta) in [0,theta]
#then we want to have hat_theta = max Xi for i<n
#after calculations , hat_theta admit this distribution : [F_theta(x)]^n

F_theta5<-function(x){
  if(x>=0 && x<=theta){
    return(sqrt(x/theta))
  }
  else{return(0)}
}

F_hat_theta<-function(x){
  return(F_theta5(x)**n)
}

obs5<-sapply(Xtheta,F_theta5)
obs5theta<-sapply(Xtheta,F_hat_theta)

par(mfrow=c(2,1))

plot(Xtheta,obs5,pch='o',col='blue')
plot(Xtheta,obs5theta,pch='+',col='red')
