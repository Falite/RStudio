#exercice3

#we must chose theta>0
theta<-7

#we have X1…Xn following this density :
f_theta<-function(x){
  if(x>theta){
    return(
      exp(-(x-theta))
    )
  }
  else{return(0)}
}
#and after calculations , X1…Xn follow this probabilities :
F_theta<-function(x){
  if(x>theta){
    return(
      1-exp(-(x-theta))
    )
  }
  else{return(0)}
}

#we are looking for X(1)=inf(X1,…,Xn)
#[…] after calculations, X(1) follow this probability :
F1<-function(x,n){
  return(
    1-(1-F_theta(x))**n
  )
}

F1_n<-function(x){
  return (F1(x,n))
}

obs<-sapply(X,F1_n)
plot(X,obs,pch='+',col='blue')

#so we ask for : what about Zn~sqrt(n)(X(1)-theta)
#[…] after calculations , we note F_Zn(x)=F(1)(theta+x/sqrt(n))

FZn<-function(x,n){
  return(
    F1(theta+x/n,n)
  )
}
FZn_n<-function(x){
  return(FZn(x,n))
}
obsZ<-sapply(X,FZn_n)
obsExp<-sapply(X,pexp)

par(mfrow=c(2,1))
plot(X,obsZ,pch='+',col='blue',ylim=c(0,1))
plot(X,obsExp,pch='o',col='red')
