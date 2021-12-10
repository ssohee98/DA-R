러시아의 알코올 소비(Alcohol Consumption in Russia)에 대한 다변량 분석
<R 코드>

#주성분 분석
p_cor=princomp(x2,cor=TRUE) #분산 설명량
summary(p_cor);attributes(p_cor)
p_cor$loadings #주성분의 계수

library(graphics)
screeplot(p_cor,npcs =5 , type = "lines",main="scree-plot") #스크리그래프
biplot(p_cor,cex=c(0.001,0.8)) #주성분 그래프
