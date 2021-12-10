러시아의 알코올 소비(Alcohol Consumption in Russia)에 대한 다변량 분석
<R 코드>

#군집분석
library(ggplot2)
library(moonBook)
library(factoextra)
library(NbClust)

alcohol_k = kmeans(x, center=5)
attributes(alcohol_k)
alcohol_k
table(alcohol_k$cluster)

x_k5 = kmeans(x, center=5); x_k5 #5개 군집분석
x$cluster5 = factor(x_k5$cluster)
mytable(cluster5~.,data=x)

ggplot(data=x, aes(x=wine, y=beer, col=cluster5))+geom_point() #wine, beer 클러스터 그래프
fviz_cluster(x_k5, data=df) 
table(x_k5$cluster) #clusterwise info

df = scale(x); df
al.dist = dist(df)
al.clust_average = hclust(al.dist, method="average"); al.clust_average
nc=NbClust(df, distance = "euclidean", min.nc = 2, max.nc = 10, method="average")
hnc <-NbClust(x,min.nc = 2,max.nc = 10,method = 'kmeans')
ncvv
plot(table(nc$Best.nc[1,]))

centers = as.data.frame(x_k5$centers)
p <- ggplot(df, aes(x =wine, y = beer, color=cluster)) + 
geom_point() +                                                 #일반데이터 
geom_point(data=centers, aes(x=V1,y=V2, color='Center'))  +    #중앙점
geom_point(data=centers, aes(x=V1,y=V2, color='Center'),       #큰영역표시 
size=52, alpha=.3,  show.legend=FALSE)
p

df2 = scale(x$wine); df2 
al2.dist = dist(df2)
al2.clust_average = hclust(al2.dist, method="average"); al2.clust_average

plot(al2.clust_average, main="Cluster Dendrogram", las=2)
rect.hclust(al2.clust_average, k=5, border="red") #덴드로그램 5개 군집으로 나누기
fviz_dend(al2.clust_average, k=5, rect=TRUE, rect_fill=T) #와인 클러스터 덴드로그램