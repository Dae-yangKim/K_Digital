# ggplot 사용

install.packages('ggplot2')
library(ggplot2)

# 산점도
str(airquality)
ggplot(airquality , aes(x = Day , y = Temp)) + geom_point(
  size = 3 , color = 'red'
)

# 선그래프
p <- ggplot(airquality , aes(x = Day , y = Temp)) + geom_line()

print(p)

# 막대그래프
ggplot(mtcars , aes(x = cyl)) + geom_bar(width = 0.5)

# 파이차트
ggplot(mtcars , aes(x = factor(cyl))) +
  geom_bar(aes(fill = factor(gear))) +
  coord_polar(theta = 'y')

# 누적 막대 그래프
ggplot(mtcars , aes(x = factor(cyl))) +
  geom_bar(aes(fill = factor(gear)))

# 상자수염그림
ggplot(airquality , aes(x = Day , y = Temp , group = Day)) +
  geom_boxplot()

# 히스토그램
ggplot(airquality , aes(Temp)) +
  geom_histogram()

ggplot(airquality , aes(Temp)) +
  geom_histogram(binwidth = 1)