# 데이터 가공(2) : 필요한 데이터 추출하기

library(readxl)
dustdata <- read_excel("C://Big_D/BigData_2021320012/K_Digital_BIGDATA/BigData_R/ch07/open03.xlsx")

View(dustdata)
str(dustdata)

library(dplyr)
dustdata_anal <- dustdata[, c("날짜" , "성북구" , "중구")]
View(dustdata)

is.na(dustdata_anal)
sum(is.na(dustdata_anal))

# 시각화
library(psych)

describe(dustdata_anal$성북구)
describe(dustdata_anal$중구)

boxplot(dustdata_anal$성북구 , dustdata_anal$중구 ,
        main = "finedust_compare" , xlab = 'AREA' , names = c("성북구" , "중구") ,
        ylab = "FINEDUST_PM" , col = c("blue" , "green"))

# 가설 검정하기
var.test(dustdata_anal$중구 , dustdata_anal$성북구)

t.test(dustdata_anal$중구 , dustdata_anal$성북구 , var.equal = T)

# ANOVA
library(readxl)
exdata <- read_excel("C://Big_D/BigData_2021320012/K_Digital_BIGDATA/BigData_R/ch05/Sample1.xlsx")
exdata1

boxplot(formula = Y20_CNT ~ AREA , data = exdata1)

anova(lm(Y20_CNT ~ AREA , data = exdata1))

# oneway.test()
oneway.test(data = exdata1 , Y20_CNT ~ AREA , var.equal = T)