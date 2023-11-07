# with을 사용하면 open 한 후에 자동으로 close 해주기 때문에 편하다.

with open('test.txt' , 'r') as f:
    f.readline()

# 자동으로 f가 close 된다.