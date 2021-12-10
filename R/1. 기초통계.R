러시아의 알코올 소비(Alcohol Consumption in Russia)에 대한 다변량 분석
<R 코드>

#데이터 불러오기
rm(list=ls())
data = read.csv("C:/russia_alcohol.csv", header=T)
attach(data)
head(data)

#기초통계
data2 <- na.omit(data)
mean(data2$wine); sd(data2$wine); max(data2$wine); min(data2$wine)
mean(data2$beer); sd(data2$beer); max(data2$beer); min(data2$beer)
mean(data2$vodka); sd(data2$vodka); max(data2$vodka); min(data2$vodka)
mean(data2$champagne); sd(data2$champagne); max(data2$champagne); min(data2$champagne)
mean(data2$brandy); sd(data2$brandy); max(data2$brandy); min(data2$brandy)

wines.mean = aggregate(wine, list(year, region), FUN="mean")
names(wines.mean) = c("year", "region", "wine means")
wines.mean

data1998 = data2[(data2$year=="1998"), ]
data1999 = data2[(data2$year=="1999"), ]
data2000 = data2[(data2$year=="2000"), ]
data2001 = data2[(data2$year=="2001"), ]
data2002 = data2[(data2$year=="2002"), ]
data2003 = data2[(data2$year=="2003"), ]
data2004 = data2[(data2$year=="2004"), ]
data2005 = data2[(data2$year=="2005"), ]
data2006 = data2[(data2$year=="2006"), ]
data2007 = data2[(data2$year=="2007"), ]
data2008 = data2[(data2$year=="2008"), ]
data2009 = data2[(data2$year=="2009"), ]
data2010 = data2[(data2$year=="2010"), ]
data2011 = data2[(data2$year=="2011"), ]
data2012 = data2[(data2$year=="2012"), ]
data2013 = data2[(data2$year=="2013"), ]
data2014 = data2[(data2$year=="2014"), ]
data2015 = data2[(data2$year=="2015"), ]
data2016 = data2[(data2$year=="2016"), ]
datar1 = data2[(data2$region=="Altai Krai"), ]
datar2 = data2[(data2$region=="Kaliningrad Oblast"), ]

mean(datar2$wine); sd(datar2$wine); median(datar2$wine)
mean(datar2$beer); sd(datar2$beer); median(datar2$beer)
mean(datar2$vodka); sd(datar2$vodka); median(datar2$vodka)
mean(datar2$champagne); sd(datar2$champagne); median(datar2$champagne)
mean(datar2$brandy); sd(datar2$brandy); median(datar2$brandy)