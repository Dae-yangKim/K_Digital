# apply 계열 함수
# apply()
# lapply()
# sapply()
# tapply()
# mapply()

sum(1 : 10)

d <- matrix(1 : 9 , ncol = 3)
d
# apply
apply(d , 1 , sum)
# 1 -> 행 기준
# 2 -> 열 기준

apply(iris[,  1 : 4] , 2 , sum)

head(iris)

# lapply
result <- lapply(1 : 3 , function(x) {x * 2})
result

unlist(result) # 리스트 구조를 벡터로 변환한다.

lapply(iris[, 1:4] , mean)

colMeans(iris[, 1:4])

# sapply
sapply(iris[, 1:4] , mean)
class(sapply(iris[, 1:4] , mean))

y <- sapply(iris[, 1 : 4] , function(x){x > 3})
class(y)
head(y)

# tapply
tapply(1 : 10 , rep(1 , 10) , sum)

# mapply
rnorm(10 , 0 , 1)

mapply(rnorm ,
       c(1 , 2 , 3) ,
       c(0 , 10 , 100) ,
       c(1 , 1 , 1))

mapply(mean , iris[, 1:4])
