# 벡터 연산

x <- c(1 , 2 , 3)
y <- c(4 , 5 , 6)

# identical : 객체가 동일한지를 판단한다.
identical(x , y)

# uniton : 합집합을 구한다.
c <- union(x , y)
c

# intersect : 교칩합을 구한다.
c <- intersect(x , y)
c

# setdiff : 차집합을 구한다.
c <- setdiff(x , y)
c

# setequal : 두 집합이 같은 집합인지 판단.
setequal(x , y)

# 벡터 연산자
# value %in% x : 벡터 x에 value가 저장되어 있는지 판단함
# x + n : +뿐 아니라 * , / , - , == 등의 연산자 적용 가능

print(1 %in% x)
print(10 %in% x)

x <- c(1 , 2 , 3 , 4 , 5)
x + 1

c(1 , 2 , 3) == c(1 , 2 , 100)
c(1 , 2 , 3) != c(1 , 2 , 100)

setequal(c(1 , 2 , 3) , c(1 , 2 , 3 , 3)) # 집합은 중복 허용 하지 않기에 동일한 집합으로 간주