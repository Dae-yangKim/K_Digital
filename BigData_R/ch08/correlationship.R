x <- data.frame(count = c(1 , 2 , 3 , 4 , 5) , sale = c(8 , 7 , 6 , 4 , 5))

cor.test(x$count , x$sale , method = 'pearson')