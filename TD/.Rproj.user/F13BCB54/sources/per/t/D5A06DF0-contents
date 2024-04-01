#exercice 1

PXn<-function(n){
  p1<-1-1/n**2
  p2<-1/n**2
  sample(c(1/n,n),size=n,prob=c(p1,p2),replace=TRUE)
}

tirage<-replicate(nb_tirages,PXn(n))
tirage_grand<-replicate(nb_tirages,PXn(n_grand))

hist(tirage,col='blue',add=TRUE)
hist(tirage_grand,col='red')

#mesurons la loi vers laquelle elle converge, de manière empirique
mesure<-function(X,n){
  n1=0
  n2=0
  size<-length(X)
  for(i in 1:size){
    if(X[i]==1/n){
      n1=n1+1
    }
    else{
      n2=n2+1
    }
  }
  return(c(n1/size,n2/size))
}

mesure(tirage,n)
mesure(tirage_grand,n_grand)