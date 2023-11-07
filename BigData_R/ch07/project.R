# 데이터 분석 : 빈도분석하고 시각화하기

library(readxl)
forest_example_data <- read_excel("C://Big_D/BigData_2021320012/K_Digital_BIGDATA/BigData_R/ch07/open.xls")
View(forest_example_data)

colnames(forest_example_data) <- c("name" , "city" , "gubun" , "area" ,
                                   "number" , "stay" , "city_new" , "code" ,
                                   "codename")
str(forest_example_data)
head(forest_example_data)

library(descr)
freq(forest_example_data$city , plot = T , main = 'city')

city_table <- table(forest_example_data$city)
city_table
barplot(city_table)

library(dplyr)
count(forest_example_data , city) %>% arrange(desc(n))
count(forest_example_data , city_new) %>% arrange(desc(n))
count(forest_example_data , codename) %>% arrange(desc(n))
