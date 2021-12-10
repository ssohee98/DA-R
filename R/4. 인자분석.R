러시아의 알코올 소비(Alcohol Consumption in Russia)에 대한 다변량 분석
<R 코드>

#인자분석
m=colMeans(x2)
s=cov(x2)
r=cor(x2)
fact1=factanal(x2,factors=2,rotation="none") #인자분석 회전 전
fact2=factanal(x2,factors=2,scores="regression") #인자분석 Varimax 회전 후
fact3=factanal(x2,factors=2,rotation="promax")  #인자분석 Promax 회전 후
fact1;fact2;fact3
attributes(fact1);attributes(fact2);attributes(fact3)

library(graphics)
prin=princomp(x2)
screeplot(prin,npcs=5,type="lines",main="scree plot") #스크리 그래프

#회전 전 인자패턴
namevar=names(fact1$loadings)=c("wine","beer","vodca","champane","brandy")
plot(fact1$loadings[,1],y=fact1$loadings[,2],pch=16,xlab="factor1",ylab="factor2",
main="factor pattern")
text(x=fact1$loadings[,1],y=fact1$loadings[,2],labels=namevar,adj=0)
abline(v=0,h=0)

#Varimax 회전 후 인자패턴
namevar=names(fact2$loadings)=c("wine","beer","vodca","champane","brandy")
plot(fact2$loadings[,1],y=fact2$loadings[,2],pch=16,xlab="factor1",ylab="factor2",
main="factor pattern")
text(x=fact2$loadings[,1],y=fact2$loadings[,2],labels=namevar,adj=0)
abline(v=0,h=0)

#Promax 회전 후 인자패턴
namevar=names(fact3$loadings)=c("wine","beer","vodca","champane","brandy")
plot(fact3$loadings[,1],y=fact3$loadings[,2],pch=16,xlab="factor1",ylab="factor2",
main="factor pattern")
text(x=fact3$loadings[,1],y=fact3$loadings[,2],labels=namevar,adj=0)
abline(v=0,h=0)