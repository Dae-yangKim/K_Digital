# 난수 생성

x <- rnorm(100 , 0 , 10) # 100개의 난수 생성 , 평균 0 , 표준편차 10
plot(density(x))

plot(density(rnorm(1000000, 0, 10))) # 개수가 많아질수록 정규분포에 가까워 진다.

# 기초 통계량

x <- c(1 : 11)
x

fivenum(x)
summary(x) # fivenum보다는 summary를 더 많이 쓴다.

x <- factor(c("a", "b", "c", "c", "c", "d", "d"))
table(x)
which.max(table(x))
names(table(x))
names(which.max(table(x)))

# 표본 추출

sample(
  1 : 10 ,
  5
) # 1부터 10 데이터에서 5개 추출

# 층화 임의 추출

install.packages("sampling")
library(sampling)
x <- strata(c("Species") , size = c(3 , 3 , 3) , method = "srswor" , data = iris)
x

getdata(iris , x)

print(str(iris))

iris$Species2 <- rep(1:2 , 75)
strata(c("Species" , "Species2") , size = c(1 , 1 , 1 , 1 , 1 , 1) , method = "srswr" , data = iris)
getdata(iris , x)

# 계통 추출

library(doBy)
x <- data.frame(x = 1:10)
y <- sampleBy(~1 , frac = .3 , data = x , systematic = T)
y

# 1 2 3 4 5 6 7 8 9 10 에서 3씩 가져오기 때문에 1 , 4 , 7이 된다.