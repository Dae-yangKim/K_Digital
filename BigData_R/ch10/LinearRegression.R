data(cars)
head(cars)

m <- lm(dist ~ speed , cars)
m

coef(m) # 회귀 계수
residuals(m) # 잔차

# speed=3인 경우의 값을 예측
predict(m , newdata = data.frame(speed=3))
coef(m)

# 모델 평가
summary(m)

# 모델 진단 그래프
plot(m , which = c(4 , 6))

# 분산 분석의 경우 , 모델 간의 비교를 위해서 한다.

full <- lm(dist ~ speed , data = cars)
reduced <- lm(dist ~ 1 , data = cars)

print(anova(reduced , full))
plot(m , 5)

plot(cars$speed , cars$dist)
abline(coef(m))

predict(m ,
        newdata = data.frame(speed = seq(4.0 , 25.0 , .2)) ,
        inteval = "confidence")

speed <- seq(min(cars$speed) , max(cars$speed) , .1)
ys <- predict(m , newdata = data.frame(speed = speed) , inteval = "confidence")
matplot(speed , ys , type = 'n')
matlines(speed , ys , lty = c(1 , 2 , 2) , col = 1)