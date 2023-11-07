x <- matrix(1 : 4 , 2 , 2)
x

apply(x , 2 , sum)
apply(x , 2 , min)

print(head(iris))
str(iris) # 요약

apply(iris[, 1 : 4] , 2 , sum) # 합
apply(iris[, 1 : 4] , 2 , mean) # 평균값
apply(iris[, 1 : 4] , 2 , min) # 최소값
apply(iris[, 1 : 4] , 2 , max) # 최대값
apply(iris[, 1 : 4] , 2 , median) # 중간값

lapply(iris[, 1 : 4] , sum)

sapply(iris[, 1 : 4] , mean)

# lapply는 연산 결과를 리스트로 반환
# sapply는 연산 결과를 벡터로 반환

