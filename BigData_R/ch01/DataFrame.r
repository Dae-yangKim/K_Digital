d <- data.frame(
  x = c(1 , 2 , 3 , 4 , 5) ,
  y = c(2 , 4 , 6 , 8 , 10) ,
  z = c('M' , 'F' , 'M' , 'F' , 'M')
)

# pandas의 데이터프레임과 사용법이 닮았다
d$x <- c(2 , 2 , 2 , 2 , 2)
print(d)

d$x <- 6:10
d

# 새로운 컬럼 추가
d$w <- c("A" , "B" , "C" , "D" , "E")
d
str(d)

# 행 , 열의 이름을 지정가능
rownames(x) <- c('a' , 'b' , 'c')
colnames(x) <- c('val1' , 'val2' , 'val3')
x

x[1 , 3 , drop = FALSE]
x[1 , 3 , drop = TRUE]

d <- data.frame(
  a = 1 : 3,
  b = 4 : 6,
  c = 7 : 9
)
d[, names(d) %in% c("b" , "c")]
d[, !names(d) %in% c("a")]

