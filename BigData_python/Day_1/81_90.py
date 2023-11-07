# 081
a , b , *c = (0 , 1 , 2 , 3 , 4 , 5)
print(a)
print(b)
print(c)

scores = [8.8, 8.9, 8.7, 9.2, 9.3, 9.7, 9.9, 9.5, 7.8, 9.4]
*valid_scores , a , b = scores
print(valid_scores)

# 082
a , b , *valid_scores = scores
print(valid_scores)

# 083
a , *valid_scores , b = scores
print(valid_scores)

# 084
temp = {}

# 085
dic = {"메로나" : 1000 ,
       "폴라포" : 1200 ,
       "빵빠레" : 1800}

# 086
dic['죠스바'] = 1200
dic['월드콘'] = 1500

# 087
ice = {'메로나' : 1000 ,
       '폴로포' : 1200 ,
       '빵빠레' : 1800 ,
       '죠스바' : 1200 ,
       '월드콘' : 1500}

print(f'메로나 가격: {ice["메로나"]}')

# 088
ice['메로나'] = 1300

# 089
del ice['메로나']

# 090
# 이유는 '누가바' key값이 존재하지 않기 때문입니다.