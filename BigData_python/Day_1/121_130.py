# 121
usr = input().rstrip()
if usr.islower():
    print(usr.upper())
else:
    print(usr.lower())

# 122
score = int(input())

if 81 <= score <= 100:
    print('A')
elif 61 <= score <= 80:
    print('B')
elif 41 <= score <= 60:
    print('C')
elif 21 <= score <= 40:
    print('D')
else:
    print('E')

# 123
data = {'달러' : 1167 ,
        '엔' : 1.096 ,
        '유로' : 1268 ,
        '위안' : 171}

usr = input("입력: ").rstrip().split()
won = usr[0]
target = usr[1]

print(won * data[target] + " " + target)

# 124
arr = [int(input()) for _ in range(3)]

print(max(arr))

# 125
data = {'011' : 'SKT' ,
        '016' : 'KT' ,
        '019' : 'LGU' ,
        '010' : '알수없음'}

phone_number = input().rstrip().split('-')[0]
print(f"당신은 {data[phone_number]} 사용자입니다.")

# 126
data = {'강북구' : ['010' , '011' , '012'] ,
        '도봉구' : ['013' , '014' , '015'] ,
        '노원구' : ['016' , '017' , '018' , '019']}

number = input('우편번호: ').rstrip()[:3]
print(data[number])

# 127
number = input("주민등록번호: ").rstrip().split('-')[1][0]

if number in ['1' , '3']:
    print("남성")
else:
    print("여성")

# 128
number = input("주민등록번호: ").rstrip().split('-')[1]

if 0 <= int(number) <= 8:
    print('서울입니다.')
else:
    print('서울이 아닙니다.')

# 129
number = input("주민등록번호: ").rstrip()

first_calc = int(number[0]) * 2 + int(number[1]) * 3 + int(number[2]) * 4 + int(number[3]) * 5 + int(number[4]) * 6 + int(number[5]) * 7 + int(number[7]) * 8 + int(number[8]) * 9 + int(number[9]) * 2 + int(number[10]) * 3 + int(number[11]) * 4 + int(number[12]) * 5
first_calc = (first_calc % 11)
second_calc = first_calc - 7

if second_calc == 4:
    print('유효한 주민등록번호입니다.')
else:
    print('유효하지 않은 주민등록번호입니다.')

# 130
import requests
btc = requests.get("https://api.bithumb.com/public/ticker/").json()['data']

num = float(btc['max_price']) - float(btc['min_price'])
opening = float(btc['opening_price'])
maxx = float(btc['max_price'])

if opening+num > maxx:
    print("상승장")
else:
    print("하락장")