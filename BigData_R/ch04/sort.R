# sort()
x <- c(20 , 11 , 33 , 50 , 47)
sort(x)

sort(x , decreasing = T)
x

# order()
# order는 주어진 인자를 정렬하기 위한 각 요소의 색인을 반환한다.
x <- c(20 , 11 , 33 , 50 , 47)
order(x)
order(x , decreasing = T)

# order의 특성을 이용해서 데이터프레임 정렬가능
iris[order(iris$Sepal.Length) , ]

iris[order(iris$Sepal.Length , iris$Petal.Length) , ]