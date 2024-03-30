#question 6

lambda<-   #paramètre de la loi exponentielle
x<-c() #collecteur des xi de taille n
alpha<- #paramètre que l'on veut
degre<-  #degré de liberté de la loi de student
  
FYn<-function(t){
  n<-length(x)
  y<-ifelse(t>0,(1-exp(-t))^n,0)
  return y
}

calc_intervalles <- function(x,alpha){
  
  
  
  n<-length(x)
  
  Xn_bar<-sum(x)/sqrt(n)
  
  X2<-x-lambda
  
  sigma_n<-sqrt(sum(X2*X2)/(n-1))
  
  gamma<-1/lambda

  
  Tn1<-qt(1-alpha/2,n-1)    #quantile de la loi de student
  
  tn1<-qnorm(1-alpha,n-1)   #quantile de la loi normale
  
  
  
  I1<-c(Xn_bar - Tn1*sigma_n/sqrt(n),Xn_bar + Tn1*sigma_n/sqrt(n))
  
  I2<-c(Xn_bar - tn1*gamma^2/sqrt(n),Xn_bar + tn1*gamma^2/sqrt(n))
  
  I3<-c(exp( log(Xn_bar) -tn1/sqrt(n) ),exp( log(Xn_bar) +tn1/sqrt(n) ))
  
  I4<-c()
  
}