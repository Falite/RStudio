#exercice7

#We have Q1…Qn follow this density :

theta7<-0.5   #theta must be between -1 and 1
f_theta7<-function(x){
  if(x>-1 && x<1){
    return(1/2*(1+theta7*x))
  }
  else{return(0)}
}

obs7<-sapply(Xtheta7,f_theta7)

par(mfrow=c(1,1))
plot(Xtheta7,obs7,pch='o',col='green')

