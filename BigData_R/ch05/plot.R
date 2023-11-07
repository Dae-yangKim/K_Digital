library(readxl)

exdata1 <- read_excel("C://Big_D/BigData_2021320012/K_Digital_BIGDATA/BigData_R/ch05/Sample1.xlsx")
str(exdata1)

# 막대그래프
freq(exdata1$SEX , plot = T , main = '성별(barplot)')

dist_gender <- table(exdata1$SEX) # 테이블 만듬
dist_gender
class(dist_gender)

barplot(dist_gender , y = c(0 , 14) , main = "BarPlot" ,
        xlab = 'Gender' , ylab = '빈도수' , names = c("Female" , "Male") ,
        col = c("pink" , "navy")) # 막대그래프 함수 사용

# 상자수염그림
boxplot(exdata1$Y21_CNT ,
        exdata1$Y20_CNT ,
        ylim = c(0 , 60) ,
        main = 'boxplot' ,
        names = c("21년건수" ,
                  "20년건수") ,
        col = c("green" ,"yellow"))

# 히스토그램
hist(exdata1$AGE , xlim = c(0 , 60) , ylim = c(0 , 7) , main = 'AGE분포')

# 파이차트
data(mtcars)
x <- table(mtcars$gear)
pie(x)

# 줄기 잎 그림 그리기
x <- c(1 , 2 , 3 , 4 , 7 , 8 , 8 , 5 , 9 , 6 , 9)
stem(x)
stem(x , scale = 2)
stem(x , scale = 0.5)

# 산점도
data(iris)
plot(x = iris$Sepal.Length , y = iris$Petal.Width)

# pair plot
pairs(iris)

# psych 패키지 사용
install.packages('psych')
library(psych)
data(iris)
pairs.panels(iris)