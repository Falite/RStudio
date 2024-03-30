#Exercice 1
#1

data()  #affiche les dataframes appelables dans R
x1=trees #on a attribué à la variable "x1" le datadrame "trees"
x2<-HairEyeColor  #idem avec HairEyeColor
x1
x2
#il se saisit de la sorte : x2["couleur de cheveux","couleur d'yeux","Sexe"]
str(x1)     
str(x2)
x1$Girth
x2[1,2,2]
x2[,2,2]

#2

summary(x1)
summary(x2)

#4

boxplot(x1$Volume,
        main="diagramme en boîte du volume des arbres contenues dans x1")

#5

hist(x1$Girth,
     main="histogramme du diamètres des arbres contenues dans x1")

#6

plot(x1$Girth,
     main="fonction ecdf des valeurs du diamètre des arbres contenues dans x1")

#7

x3<-x1
x3
x3[31,"Girth"]<-206
x3
par(mfrow=c(1,2))
plot(x3$Girth)
hist(x3$Girth)

#8

help(pie)
x2

par(mfrow=c(1,1))
pie(x2["Brown",,"Male"],
    main = "Hommes avec des cheveux bruns")

#9

barplot(x2["Black",,"Female"])

#10

par(mfrow=c(2,1))
barplot(c(sum(x2[,"Brown","Male"]),
  sum(x2[,"Blue","Male"]),
  sum(x2[,"Hazel","Male"]),
  sum(x2[,"Green","Male"])),
  names.arg=c("Brown","Blue","Hazel","Green"),
main="répartition de couleurs des yeux chez les hommes")

barplot(c(sum(x2["Black",,"Male"]),
          sum(x2["Brown",,"Male"]),
          sum(x2["Red",,"Male"]),
          sum(x2["Blond",,"Male"])),
        names.arg=c("Black","Brown","Red","Blond"),
        main="répartition de couleurs de cheveux chez les hommes")



#11

par(mfrow=c(2,2))
pie(c(sum(x2["Black",,"Male"]),
      sum(x2["Brown",,"Male"]),
      sum(x2["Red",,"Male"]),
      sum(x2["Blond",,"Male"])),
    main="répartition de couleurs de cheveux chez les hommes")

pie(c(sum(x2["Black",,"Female"]),
      sum(x2["Brown",,"Female"]),
      sum(x2["Red",,"Female"]),
      sum(x2["Blond",,"Female"])),
    main="répartition de couleurs de cheveux chez les femmes")

pie(c(sum(x2[,"Brown","Male"]),
      sum(x2[,"Blue","Male"]),
      sum(x2[,"Hazel","Male"]),
      sum(x2[,"Green","Male"])),
    main="répartition de couleurs des yeux chez les hommes")

pie(c(sum(x2[,"Brown","Female"]),
      sum(x2[,"Blue","Female"]),
      sum(x2[,"Hazel","Female"]),
      sum(x2[,"Green","Female"])),
    main="répartition de couleurs des yeux chez les femmes")


