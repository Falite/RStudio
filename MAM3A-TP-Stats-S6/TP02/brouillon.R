Xer <- rnorm(1000,0,1)
Xer
MXer<-mean(Xer)
Xer2<-Xer-MXer

SXer<-mean(Xer2)
summary(Xer)
t.test(Xer)
