print(iris3)
print(str(iris3))

data(mtcars) # 불러오기

head(mtcars)

x <- read.csv("C://Big_D/BigData_2021320012/K_Digital_BIGDATA/BigData_R/ch04/a.csv")
x
mode(x)

x <- read.csv("C://Big_D/BigData_2021320012/K_Digital_BIGDATA/BigData_R/ch04/a.csv" ,
              header = F) # 판다스에서의 csv처럼 header 지정이 가능하다.
x
x$name <- as.character(x$name)
str(x)

x <- read.csv("C://Big_D/BigData_2021320012/K_Digital_BIGDATA/BigData_R/ch04/a.csv" ,
              stringsAsFactors = F) # 이렇게 지정하면 처음부터 팩터 아니라 문자열로 불러 올 수 있다
str(x)

# 데이터를 csv파일로 저장
write.csv(x , "d.csv" , row.names = F)