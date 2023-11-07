install.packages("mlbench")
library(mlbench)
data("BostonHousing")

m <- lm(medv ~ . , data = BostonHousing)
m2 <- step(m , direction = "both") # 단계적 변수 선

formula(m2)

step(m , direction = 'both')

m2 <- step(m , direction = "both")
formula(m2)

library(boot)
head(survival)

print(str(survival))
print(cor(survival$dose , survival$surv))

plot(survival$dose , survival$surv)

model <- lm(survival$surv ~ survival$dose , data = survival)
model
pred <- predict(model , survival['dose'])
pred

MAE <- sum(abs(pred - survival$surv) / nrow(survival))
MAE

m <- lm(Sepal.Length ~ . , data = iris)
m2 <- step(m , direction = 'both')