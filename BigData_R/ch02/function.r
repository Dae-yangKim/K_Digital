fibo <- function(n)
{
  if(n == 1 || n == 2)
  {
    return(1)
  }
  return(fibo(n - 1) + fibo(n - 2))
}

print(fibo(10))

# 가변 길이 인자
f <- function(...)
{
  args <- list(...)
  for (a in args)
  {
    print(a)
  }
}
f('3' , '4')

n <- 1
f <- function()
{
  print(n)
  n <- n + 1
  return(n)
}
n <- f()
print(n)

list = ls()
print(list)

# 중첩함수
f <- function(x)
{
  a <- 2
  g <- function(y)
  {
    print(y + a)
  }
  g(x)
}
f(1)

# 전역 변수 사용 example
a <- 100
f <- function(x)
{
  g <- function(y)
  {
    print(y + a)
  }
  g(x)
}
f(1)

# <<- 사용
b <- 0
f <- function()
{
  a <- 1
  g <- function()
  {
    a <<- 2
    b <<- 2
    print(a)
    print(b)
  }
  g()
  print(a)
  print(b)
}
f()
# 선언된 부분에 상관없이 할당

f <- function(df2)
{
  df2$a <- c(1 , 2 , 3)
}
df <- data.frame(a = c(4 , 5 , 6))
f(df)
df