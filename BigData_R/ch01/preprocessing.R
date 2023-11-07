nrow(mtcars)
print(mtcars)
str(mtcars)

x <- filter(mtcars , mtcars$cly == 4)
print(x)

library(dplyr)
head(select(mtcars , am , gear))

print(dplyr::filter(mtcars , cyl >= 6 & mpg > 20))
# filter함수가 이미 있기 때문에 헷갈리지 않게 하기 위해서
# dplyr 라이브러리의 filter 함수라는 것을 명시하기 위해서 
# :: 을 사용한다.

head(arrange(mtcars , desc(wt))) # 내림차순
head(mtcars)
head(mutate(mtcars , years = '1977'))
head(mtcars)

distinct(mtcars , cyl)
distinct(mtcars , gear)
summarise(mtcars , cyl_mean = mean(cyl) , cyl_min = min(cyl) , cyl_max = max(cyl))

