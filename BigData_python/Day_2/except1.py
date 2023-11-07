try:
    a = [1 , 2]
    print(4 / 0)    
    print(a[3])
except ZeroDivisionError as e:
    print(e)
except IndexError:
    print("인덱스 할 수 없습니당.")

print("프로그램 종료")