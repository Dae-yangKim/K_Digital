# split()
x <- split(iris , iris$Species)

x <- c(20 , 11 , 33 , 50 , 47)
print(sort(x))
print(order(x))

lapply(split(iris$Sepal.Length , iris$Species) , mean)

# subset()
# 전체를 부분으로 구분하는 split()과 다르게 조건을 만족하는 특정 부분만 취하는
# 용도로 사용

subset(iris , Species == 'setosa')
subset(iris , Species == 'setosa' & Sepal.Length > 5.0)
subset(iris , select = c(Sepal.Length , Species)) # 특정 컬럼만 사용
subset(iris , select = -c(Sepal.Length , Species)) # 특정 컬럼만 제외

# merge()
# merge는 데이터베이스에서의 join과 같은 역할을 한다

x <- data.frame(name = c("a" , "b" , "c") , math = c(1 , 2 , 3))
y <- data.frame(name = c("c" , "b" , "a") , english = c(4 , 5 , 6))

merge(x , y)
cbind(x , y)

merge(x , y , all = T)