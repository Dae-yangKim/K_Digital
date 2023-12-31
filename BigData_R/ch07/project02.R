# 데이터 가공(2) : 데이터 재구조화하기
library(readxl)
entrance_xls <- read_excel("C://Big_D/BigData_2021320012/K_Digital_BIGDATA/BigData_R/ch07/open02.xls")
View(entrance_xls)

str(entrance_xls)
head(entrance_xls)

# 컬럼명 변경과 공백 제거하기
colnames(entrance_xls) <- c("country" , "JAN" , "FEB" , "MAR" , "APR" , "MAY" ,
                            "JUN" , "JUL" , "AUG" , "SEP" , "OCT" , "NOV" , "DEC")
entrance_xls$country <- gsub(" " , "" , entrance_xls$country) # 공백 제거
entrance_xls

# 국가 수 확인 및 상위 5개국 추출하기

entrance_xls |> nrow()

top5_country <- entrance_xls[order(-entrance_xls$JAN), ] |> head(n = 5)
top5_country

library(reshape2)
top5_melt <- melt(top5_country , id.vars = 'country' , variable.name = 'mon')
head(top5_melt)

# 시각화 하기
library(ggplot2)

ggplot(top5_melt , aes(x = mon , y = value , group = country)) +
  geom_line(aes(color = country))

ggplot(top5_melt , aes(x = mon , y = value , group = country)) +
  geom_line(aes(color = country)) +
  ggtitle("2020년 국적별 입국 수 변화 추이") +
  scale_y_continuous(breaks = seq(0 , 500000 , 50000))

ggplot(top5_melt , aes(x = mon , y = value , fill = country)) +
  geom_bar(stat = 'identity' , position = 'dodge')

ggplot(top5_melt , aes(x = mon , y = value , fill = country)) +
  geom_bar(stat = 'identity' , position = 'stack')