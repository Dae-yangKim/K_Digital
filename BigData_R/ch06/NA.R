# 결측치 확인하기
x <- c(1 , 2 , NA , 4 , 5)
x
sum(x)
is.na(x)
table(is.na(x))

# 결측치 제외하기
sum(x , na.rm = T)

# 결측치 개수 확인하기
data("airquality")
is.na(airquality)
sum(is.na(airquality))

# 컬럼별 결측치 개수 확인
colSums(is.na(airquality))

# 결측치 제거하기
na.omit(airquality)

# 결측치 대체하기
airquality[is.na(airquality)] <- 0
colSums(is.na(airquality))

# 이상치 확인하기
boxplot(mtcars$wt)

# boxplot 기술 통계량 확인
boxplot(mtcars$wt)$stats

# 이상치 처리하기
mtcars$wt > 5.25 #위의 기술통계량에서 가장 큰 값 (upper fence)이 5.25 였다.

mtcars$wt <- ifelse(mtcars$wt > 5.25 , NA , mtcars$wt)
mtcars$wt
