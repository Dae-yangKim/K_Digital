x <- table(c("a", "b", "b", "b", "c", "c", "d"))

d <- data.frame(x = c("1" , "2" , "3" , "4") , y = c("A" , "B" , "A" , "B") , 
                num = c(3 , 5 , 8 , 7))
d

z <- xtabs(num ~ x + y , data = d)

d2 <- data.frame(x = c("A" , "A" , "A" , "B" , "B"))
z2 <- xtabs(~x , d2)
z2

xt <- xtabs(num ~ x + y , data = d)
xt
margin.table(xt , 1)
margin.table(xt , 2)
margin.table(xt)
prop.table(xt , 2)

# 독립성 검정

library(MASS)
data(survey)
str(survey)

head(survey[c("Sex" , "Exer")])

# 가설 검정

chitab <- xtabs(~ W.Hnd + Clap , data = survey)
chi_test <- chisq.test(chitab)

fish <- fisher.test(xtabs(~ W.Hnd + Clap , data = survey))
fish

# 맥니마 검정

Performance <-
  matrix(c(794 , 86 , 150 , 570) ,
         nrow = 2 ,
         dimnames = list(
           "1st Survey" = c("Approve" , "Disapprove") ,
           "2nd Survey" = c("Approve" , "Disapprove")))

Performance

mcnemar.test(Performance)

binom.test(86 , 86 + 150 , .5)