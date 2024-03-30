#question1
par(mfrow=c(1,1))
boxplot(iris)
hist(iris$Petal.Length)

#question2
par(mfrow=c(1,3))
boxplot(subset(iris,Species=="setosa")$Petal.Length,
        main="longueur des pétales pour les setosa")
boxplot(subset(iris,Species=="versicolor")$Petal.Length,
        main="longueur des pétales pour les versicolor")
boxplot(subset(iris,Species=="virginica")$Petal.Length,
        main="longueur des pétales pour les virginica")

par(mfrow=c(1,3))
hist(subset(iris,Species=="setosa")$Petal.Length,
     main="longueur des pétales pour les setosa")
hist(subset(iris,Species=="versicolor")$Petal.Length,
     main="longueur des pétales pour les versicolor")
hist(subset(iris,Species=="virginica")$Petal.Length,
     main="longueur des pétales pour les virginica")

#il y a une flagrante différence concernant les setosa :
#sa moyenne n'a rien à voir avec celle des versicolor et des virginica

#question3

par(mfrow=c(1,1))

plot(subset(iris,Species=="setosa")$Petal.Length,col='red')
par(new=TRUE)
plot(subset(iris,Species=="versicolor")$Petal.Length,col='grey')
par(new=TRUE)
plot(subset(iris,Species=="virginica")$Petal.Length,col='grey')

summary(subset(iris,Species=="setosa")$Petal.Length)


