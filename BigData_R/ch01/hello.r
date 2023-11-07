gender <- factor("m" , c("m" , "f"))

print(gender)
print(levels(gender))
print(nlevels(gender))
print(levels(gender)[1])

levels(gender) <- c('male' , 'female')
print(levels(gender))
print(factor(c('m' , 'm' , 'f') , c('m' , 'f'))) # levels의 경우에는 중복이 삭제된다

x <- c(1 , 2 , 3 , 4 , 5)
print(x)
x <- c(1 , 3 , 4)
names(x) <- c('kim' , 'seo' , 'park')
print(x)

x <- c("a" , "b" , "c")
names(x) <- c('kim' , 'seo' , 'park')
print(x[c('kim' , 'park')])
