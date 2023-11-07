library(readxl)

xlsdata <- read_excel("C://Big_D/BigData_2021320012/K_Digital_BIGDATA/BigData_R/ch07/open04.xls")
View(xlsdata)

data_raw <- xlsdata[, c(2 : 5)]
head(data_raw)

names(data_raw)
names(data_raw) <- c("state" , "city" , "name" , "addr")
names(data_raw)

table(data_raw$state)
barplot(table(data_raw$state))

daejeon_data <- data_raw[data_raw$state == "대전" , ]
head(daejeon_data)

nrow(daejeon_data)