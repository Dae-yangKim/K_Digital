# 게시판 페이징하기

def getTotalPage(m , n):
    page = m // n
    if m % n > 0:
        page += 1
    return page

m , n = map(int , input().split())
print(f"총 페이지 수 : {getTotalPage(m , n)}")