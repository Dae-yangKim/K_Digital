str(mtcars)

install.packages("Hmisc")
library(Hmisc)

describe(mtcars)

summary(mpg ~ cyl + hp , data = mtcars)
summary(mpg ~ cyl + hp , data = mtcars , fun = var) # 아마도 분산으로 한 것 같다
summary(cyl ~ mpg + hp , data = mtcars , method = 'reverse')
summary(mpg ~ cyl + hp, data = mtcars , method = "cross")

# 시각화
plot(iris)
plot(iris$Sepal.Length)
plot(iris$Species)

plot(Species ~ Sepal.Length , data = iris)

with(iris , {plot(Sepal.Length , Sepal.Width , pch = as.numeric(Species))
  legend("topright" , legend = levels(iris$Species) , pch = 1 : 3)})

# caret 사용
install.packages("caret")
install.packages("AppliedPredictiveModeling")
library(caret)
library(AppliedPredictiveModeling)

featurePlot(iris[, 1 : 4] , iris$Species , plot = "ellipse")
