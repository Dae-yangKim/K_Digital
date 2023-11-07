ex_data <- read.table(
  "C://Big_D/BigData_2021320012/K_Digital_BIGDATA/BigData_R/ch05/data_ex.txt" ,
  encoding = 'EUC-KR' ,
  fileEncoding = 'UTF-8' , header = TRUE ,
  nrows = 4
)
View(ex_data)

install.packages('readxl')
library(readxl)

excel_data_ex <- read_excel("C://Big_D/BigData_2021320012/K_Digital_BIGDATA/BigData_R/ch05/data_ex.xlsx")
View(excel_data_ex)

install.packages('jsonlite')
library(jsonlite)

json_data <- fromJSON("C://Big_D/BigData_2021320012/K_Digital_BIGDATA/BigData_R/ch05/data_ex.json")
str(json_data)

# 데이터 관측치
print(str(iris))
ncol(iris) # 열 개수
nrow(iris) # 행 개수
dim(iris) # 행과 열 개수 동시에

x <- c(1 : 5)
x
length(x)
ls(iris)

# 기술통계량 확인하기
# 기술통계량이란 , 데이터를 요약한 대푯값을 뜻한다.

mean(iris$Sepal.Length)
median(iris$Sepal.Length)

range(iris$Sepal.Length) # 범위

quantile(iris$Sepal.Length) # 4분위수 계산

sort(iris$Sepal.Length)
summary(iris$Sepal.Length) # 데이터 요약

var(iris$Sepal.Length) # 분산
sd(iris$Sepal.Length)# 표준편차

install.packages("psych")
library(psych)

kurtosi(iris$Sepal.Length) # 첨도
skew(iris$Sepal.Length) # 왜도

# 데이터 빈도분석
install.packages("descr")
library(descr)

freq_test <- freq(iris$Sepal.Length , plot = T)
freq_test

