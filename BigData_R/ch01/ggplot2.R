library(ggplot2)
str(economics)

# 그래프에 사선 그리기
ggplot(economics , aes(x = date , y = psavert)) + geom_line() +
  geom_abline(intercept = 12.18671 , slope = -0.0005444)

# 그래프에 평행선 그리기
ggplot(economics , aes(x = date , y = psavert)) + geom_line() +
  geom_hline(yintercept = mean(economics$psavert))

# 그래프에 수직선 그리기
library(dplyr)

x_inter <- filter(economics , psavert == min(economics$psavert))$date

ggplot(economics , aes(x = date , y = psavert)) +
  geom_line() +
  geom_vline(xintercept = x_inter)

# 그래프에 텍스트 입력하기
ggplot(airquality , aes(x = Day , y = Temp)) +
  geom_point() +
  geom_text(aes(label = Temp , vjust = 0 , hjust = 0))

# 그래프에 사각형 그리기
ggplot(mtcars , aes(x = wt , y = mpg)) +
  geom_point() +
  annotate("rect" , xmin = 3 , xmax = 4 , ymin = 12 , ymax = 21 ,
           alpha = 0.5 , fill = "skyblue")

# 그래프에 화살표 그리기
ggplot(mtcars , aes(x = wt , y = mpg)) +
  geom_point() +
  annotate("rect" , xmin = 3 , xmax = 4 , ymin = 12 , ymax = 21 ,
           alpha = 0.5 , fill = "skyblue") +
  annotate("segment" , x = 2.5 , xend = 3.7 , y = 10 , yend = 17 ,
           color = "red" , arrow = arrow())

# 그래프에 도형과 텍스트를 함께 표시하기
ggplot(mtcars , aes(x = wt , y = mpg)) +
  geom_point() +
  annotate("rect" , xmin = 3 , xmax = 4 , ymin = 12 , ymax = 21 ,
           alpha = 0.5 , fill = "skyblue") +
  annotate("segment" , x = 2.5 , xend = 3.7 , y = 10 , yend = 17 ,
           color = "red" , arrow = arrow()) +
  annotate("text" , x = 2.5 , y = 10 , label = "point")

# 그래프와 축 제목 추가하기

ggplot(mtcars , aes(x = gear)) + geom_bar() +
  labs(x = "기어수" , y = "자동차수" , title = "변속기 기어별 자동차수")

# 절편과 기울기 구하기 : 회귀분석

library(readxl)
exdata1 <- read_excel("C://Big_D/BigData_2021320012/K_Digital_BIGDATA/BigData_R/ch05/Sample1.xlsx")
View(exdata1)

# 두 변수 간 상관관계 파악
# cor.test() 함수 사용
cor.test(exdata1$Y20_CNT , exdata1$Y21_CNT)
# cor 값은 0.7에 p-value가 0.000107이기에 통계적으로 유의하며 ,
# cor값이 1에 가깝기 때문에 양의 상관관계가 있다고 판단된다.

# 회귀분석하여 절편과 기울기 구하기
reg_result <- lm(Y21_CNT ~ Y20_CNT , data = exdata1)
reg_result

ggplot(exdata1 , aes(x = Y20_CNT , y = Y21_CNT)) +
  geom_line() +
  geom_abline(intercept = 0.7104 , slope = 0.7864)
# 회귀분석의 결과값에 따라서 그래프 그릴 수 있다.