# 데이터프레임의 행과 컬럼 합치기

x_r <- rbind(c(1 , 2 , 3) , c(4 , 5 , 6))
x_r

x_c <- cbind(c(1 , 2 , 3) , c(4 , 5 , 6))
x_c

x <- data.frame(id = c(1 , 2) , name = c("a" , "b") , stringAsFactors = T)
x
x <- rbind(x , c(3 , "c"))

y <- cbind(c(1 , 2 , 3) , c(4 , 5 , 6))