#installation de packages
install.packages("evd",dependencies=T)
library(evd)

#on regarde où on est 
getwd()

#récupération des données
#! on a placé les données dans le même dossier que celui pour le projet
donnees<-read.table("FRNOR.RR2021.PPDQ.data",header=TRUE)

#on y jette un oeil
summary(donnees)

#on récupère les données de pluie , attention ! utiliser le $ pour y créer un vecteur 
#et non un dataframe
pluie<-donnees$RR


summary(pluie)
