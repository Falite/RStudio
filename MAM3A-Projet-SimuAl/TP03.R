###### TP03 part 1 : Aiguille de Buffon

##### données :
xp<-seq(-10,10,100)
n<-10000
nb_p=0

#longueur de l'aiguille :
a<-2
#largeur de la latte :
L<-4

#réalisation des tetas et des X
Vteta<-runif(n)*pi-(pi/2)
VecX<-runif(n)*L

#simulations
for(i in 1:n){
  V1<-(a/2)*cos(Vteta[i])
  V2<-L-(a/2)*cos(Vteta[i])
  
  if(!(VecX[i]>V1&&VecX[i]<V2)){
    nb_p<-nb_p+1
  }
  
}

#résultat
n/nb_p


#end