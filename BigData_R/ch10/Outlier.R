data(Orange)
m <- lm(circumference ~ age + I(age^2) , data = Orange)

rstudent(m)
Orange <- hbind(Orange , data.frame(Tree = as.factor(c(6 , 6 , 6)) , 
                                    age = c(118 , 484 , 664) ,
                                    circumference = c(177 , 50 , 30)))
install.packages("car")
m <- lm(circumference ~ age + I(age^2) , data = Orange)
print(car::outlierTest(m))
plot(Orange$age , Orange$circumference)
