x <- c(1 , 2 , 3 , 4 , 5)
ifelse(x %% 2 == 0 , "even" , "odd")
# 주어진 test값에 따라서 yes 또는 no 값을 반환한다.

for(i in x)
{
  print(i)
}

i <- 1
while(i <= 10)
{
  print(i)
  i <- i + 1
}

# repeat같은 경우에는 블록 내부에 조건문 달아서 break 해야함
i <- 1
repeat
{
  print(i)
  if(i >= 10)
  {
    break
  }
  i <- i + 1
}

