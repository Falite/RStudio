#exercice2

PXi<-function(n){
  p<-c(1/3,2/3)        #we sample a ball between 2 black balls & 4 white ball 
  
  sample(c(1,0),size=n,prob=p,replace=TRUE)
}

tirage2<-replicate(n,PXi(n))
tirage2_grand<-replicate(n_grand,PXi(n_grand))

hist(tirage2_grand,col='red')
hist(tirage2,col='blue')

Xn_bar<-function(N){
  tirage_bar<-replicate(N,PXi(N))
  Y<-0
  for(i in 1:N){
    Y<-Y+tirage_bar[i]
  }
  return (Y/N)
}
Xn_bar(n)
Xn_bar(n_grand)
