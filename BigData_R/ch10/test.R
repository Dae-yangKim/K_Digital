x <- rnorm(30)
x
t.test(x)

sleep2 <- sleep[, -3]
sleep2
print(tapply(sleep2$extra , sleep2$group , mean))

library(doBy)
summaryBy(extra ~ group , sleep2)

var.test(extra ~ group , sleep2)
t.test(extra ~ group , data = sleep2 , paired = F , var.equal = T)

with(sleep , t.test(extra[group == 1] , extra[group == 2] , paired = T))