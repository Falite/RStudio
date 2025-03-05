#### TP03 part 4 : Méthode de Monte-Carlo

## exercice 4 : simulation de pi par méthode de Monte Carlo

n<-10000

k<-0
for(i in 1:n){
  y<-runif(1,0,1)
  x<-runif(1,0,1)
  if(x^2+y^2<=1){
    k=k+1
  }
}

pi<-4*k/n
print(pi)

#end