#Exercice2

par(mfrow=c(1,1))
plot(x1$Girth,x1$Volume)
pairs(x1)
cor(x1)
cor(x1,method="kendall")
cor(x1,method="spearman")

