#### TP03 part 5 :Méthode du Rejet

## exercice 6 : simulation de X par méthode de rejet

##données
n<-100000

f<-function(x){
  if(abs(x)<=1){
    return((2/pi)*sqrt(1-x^2))
  }
}

g<-function(x){
  return(dunif(x,-1,1))
}

c<-4/pi

## algorithme
U<-runif(n,0,1)
X<-g(U)
T<-c*(g(X)/f(X))
while(U*T>=1){
  U<-runif(n,0,1)
  X<-g(U)
  T<-c*(g(X)/f(X))
}


