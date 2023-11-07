library(dplyr)
library(readxl)

exdata1 <- read_excel("C://Big_D/BigData_2021320012/K_Digital_BIGDATA/BigData_R/ch05/Sample1.xlsx")
head(exdata1)

print(exdata1 %>% select(ID))

m_history <- read_excel("C://Big_D/BigData_2021320012/K_Digital_BIGDATA/BigData_R/ch06/Sample2_m_history.xlsx")
f_history <- read_excel("C://Big_D/BigData_2021320012/K_Digital_BIGDATA/BigData_R/ch06/Sample3_f_history.xlsx")

View(m_history)
View(f_history)

# 테이블을 세로로 결합하기
exdata_bindjoin <- bind_rows(m_history , f_history)
View(exdata_bindjoin)

# left join
left <- left_join(m_history , f_history , by = "ID")
# inner join
inner <- inner_join(m_history , f_history , by = "ID")
# full join
full <- full_join(m_history , f_history , by = "ID")

# 오른쪽 테이블을 기준으로 결합하고 싶은 경우에는
# right_join() 사용

# 데이터 구조 변경하기

install.packages("reshape2")
library(reshape2)

View(airquality)

names(airquality) <- tolower(names(airquality))
melt_test <- melt(airquality)
print(head(melt_test))

melt_test2 <- melt(airquality , id.vars = c("month" , "wind") , measure.vars = "ozone")
print(head(melt_test2))

# cast() 함수

aq_melt <- melt(airquality , id.vars = c("month" , "day") , na.rm = F)
head(aq_melt)
# 열을 행으로 바꾸기

aq_dcast <- dcast(aq_melt , month + day ~ variable)
head(aq_dcast)

acast(aq_melt , month ~ variable , mean)
dcast(aq_melt , month ~ variable , sum)

# NA 처리
x <- c(1 , 2 , NA , 4 , 5)
print(is.na(x))

boxplot(mtcars$wt)$stats