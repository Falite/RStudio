######### expliration et modèle statistique des données de pluie #########

#exploitation de pluie :

pluie
names(pluie)

#question 1
#on crée le vecteur des pluie non nulles
pluie1<-pluie[pluie>0]

#on calcule P(X=0) à partir de P(X!=0)
p1<-length(pluie1)/length(pluie)
p1
p2<-1-p1
p2

#on observe la loi observée
plot(density(pluie1))
hist(pluie1,add=TRUE,prob=T,col="red")

#fonction qui calcule la log vraisemblance
LVexp<-function(lambda){
  sum(dexp(pluie1,rate=lambda,log=TRUE))
}

#on définit un simple vecteur allant de 0 à 2 ayant 100 valeurs
xx<-seq(0.01,2,length.out=100)
#on l'applique à notre fonction
yy<-sapply(xx,LVexp)

#on affiche la fonction
plot(xx,yy,xaxs="i",yaxs="i",pch="+",
     main="courbe de la log vraisemblance")

#on y met la maximisation de la vraisemblance
abline(v=1/mean(pluie1),add=TRUE)


