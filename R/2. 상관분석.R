러시아의 알코올 소비(Alcohol Consumption in Russia)에 대한 다변량 분석
<R 코드>

#상관분석
y=cor(x2) #변수 간 상관행렬
install.packages("corrplot")
library(corrplot) 
plot(x2) #상관행렬의 시각화 그림
corrplot(y, method="circle")
corrplot(y,method="color")
corrplot(y, method="number")