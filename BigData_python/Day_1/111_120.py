# 111
usr = input().rstrip()
print(usr * 2)

# 112
usr = int(input())
print(usr + 10)

# 113
usr = int(input())
if not usr % 2 == 0:
    print("홀수")
else:
    print("짝수")

# 114
usr = int(input())
if usr + 20 > 255:
    print(255)
else:
    print(usr + 20)

# 115
usr = int(input())
if usr - 20 < 0:
    print(0)
elif usr - 20 > 255:
    print(255)
else:
    print(usr - 20)

# 116
usr = input().rstrip()
if usr.split(":")[1] == '00':
    print('정각입니다.')
else:
    print('정각이 아닙니다.')

# 117
fruit = ['사과' , '포도' , '홍시']
usr = input("좋아하는 과일은?").rstrip()
if usr in fruit:
    print("정답입니다.")
else:
    print("오답입니다.")

# 118
warn_investment_list = ['Microsoft' , 'Google' , 'Naver' , 'kakao' , 'SAMSUNG' , 'LG']

usr = input().rstrip()
if usr in warn_investment_list:
    print("투자 경고 종목입니다.")
else:
    print("투자 경고 종목이 아닙니다.")

# 119
fruit = {'봄' : "딸기" , "여름" : "토마토" , "가을" : "사과"}

usr = input("제가 좋아하는 계절은: ").rstrip()
if usr in fruit.keys():
    print("정답입니다.")
else:
    print("오답입니다.")

# 120
usr = input("좋아하는과일은? ").rstrip()
if usr in fruit.values():
    print("정답입니다.")
else:
    print("오답입니다.")