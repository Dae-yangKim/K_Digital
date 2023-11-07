x <- matrix(c(1 , 2 , 3 , 4 , 5 , 6 , 7 , 8 , 9) , nrow = 3 , byrow = TRUE)
print(x)

x <- matrix(c(1 , 2 , 3 , 4 , 5 , 6 , 7 , 8 , 9) , ncol = 3)
print(x)

x <- matrix(1 : 9 , nrow = 3 , dimnames = list(c("r1" , "r2" , "r3") , 
                                               c("c1" , "c2" , "c3")))
X
print(x[1 , 3]) # 이렇게 접근
print(x[1 : 2 , ])
print(x[c(1 , 3) , c(1 , 3)])