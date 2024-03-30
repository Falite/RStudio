#question 0
set.seed(123)
N<-sample(200:400,1)


#question 4
n<-5
#on fait un tirage
sample(1:N,n,replace=F)

#créons la matrice ( vide pour l'instant)
D<-5000
mat_ech<-matrix(,nrow=D,ncol=n)

#on la remplit
for(i in 1:D){ mat_ech[i,]=sample(1:N,n,replace=F)}

#on regarde sa dimension :
dim(mat_ech)

summary(mat_ech)


#question  4
# 1)

#on code les fonctions :

N1<-function(x){
  2*mean(x)-1
}

N2<-function(x){
  max(x)
}

N3<-function(x){
  (1+1/n)*max(x)-1
}

# 2)

h1<-apply(mat_ech,1,N1)
h2<-apply(mat_ech,1,N2)
h3<-apply(mat_ech,1,N3)

#question 6
#regardons

summary(h1)
summary(h2)
summary(h3)

#question 7
#traçons les 

hist(h1,col="red")
hist(h2,col="blue",add=T)      #add=T pour mettre sur la même image
hist(h3,col="green",add=T)

# de manière plus fine :
hist(h1,breaks=seq(1,640,by=10),xaxs="i",yaxs="i",xlim=c(0,550),ylim=c(0,0.02),col="red",prob=T,main="question 7")
hist(h2,breaks=seq(1,640,by=10),xaxs="i",yaxs="i",xlim=c(0,550),ylim=c(0,0.02),col="blue",prob=T,add=T)
hist(h3,breaks=seq(1,640,by=10),xaxs="i",yaxs="i",xlim=c(0,550),ylim=c(0,0.02),col="green",prob=T,add=T)

abline(v=mean(h1),lwd=2,col='red')
abline(v=mean(h2),lwd=2,col='blue')
abline(v=mean(h3),lwd=2,col='green')    #estimateur pris par les anglais 
abline(v=N,lwd=2,col='purple')





