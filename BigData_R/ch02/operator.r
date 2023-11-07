# n %% m -> n을 m으로 나눈 나머지
# n %/% m -> n을 m으로 나눈 몫

x <- c(1 , 2 , 3 , 4 , 5)
x + 1

x <- c(1 , 2 , 3 , 4 , 5)
x + x
x == x
x == c(1 , 2 , 3 , 5 , 5)
c(T , T , T) & c(T , F , T)

# 내장 함수
sum(x)
mean(x)
median(x)

d <- data.frame(x = c(1 , 2 , 3 , 4 , 5) , y = c("a" , "b" , "c" , "d" , "e"))
d

d[d$x %% 2 == 0 , ] #짝수인 행만 추출

# NA의 처림 **중요하다**
NA & T
NA + 1

sum(c(1 , 2 , 3 , NA))
sum(c(1 , 2 , 3 , NA) , na.rm = T) # 무시

x <- data.frame(a = c(1 , 2 , 3) , b = c("a" , NA , "c") , 
                c = c("a" , "b" , NA))

na.fail(x)
na.omit(x) # NA가 포함된 행을 제외한다
na.exclude(x) # NA가 포함된 행을 제외한다
na.pass(x) # NA여부 상관없이 통과

# omit 과 exclude의 차이
df <- data.frame(x = 1 : 5 , y = seq(2 , 10 , 2))
df[3 , 2] = NA
df

# 선형회귀 모델의 잔차를 구한다
resid(lm(y ~ x , data = df , na.action = na.omit)) # omit 사용
resid(lm(y ~ x , data = df , na.action = na.exclude)) # exclude 사용

#  resid()의 결과값의 길이가 원래의 데이터의 길이와 동일해진다는 차이가 존재.
