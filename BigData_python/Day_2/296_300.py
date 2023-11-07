# 296
per = ["10.31" , "" , "8.00"]

for i in per:
    try:
        print(float(i))
    except ValueError as e:
        print(0)

# 297
arr = []
for i in per:
    try:
        arr.append(float(i))
    except ValueError as e:
        continue

# 298
try:
    num = int(input())
    print(4 // num)
except ZeroDivisionError as e:
    print("0으로 나눌 수 없습니다.")

# 299
data = [1,2,3]

for i in range(5):
    try:
        print(data[i])
    except:
        print("인덱스 값이 범위를 넘어갔습니다.")

# 300
for i in per:
    try:
        num = float(i)
    except:
        print("float타입으로 변환이 불가능 합니다.")
    else:
        print(f"변환 후 값 : {num}")
    finally:
        print("프로그램 작동중")