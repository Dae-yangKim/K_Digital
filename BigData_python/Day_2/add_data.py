# 파일에 새로운 내용 추가하기

f = open('test.txt' , 'a') # 파일 추가 모드 'a'
for i in range(11 , 20):
    data = '%d번째 줄입니다.\n' % i
    f.write(data)
f.close() # outputDemo.py를 실행하면 알겠지만 추가되서 나온다.