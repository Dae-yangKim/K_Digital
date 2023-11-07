import re
p = re.compile('[a-z]+') # 이 경우 알파벳만 인식 할 수 있기 때문에 숫자는 불가능
m = p.match("python") # m = p.search("python") 으로 해도 같은 결과가 나온다.
print(m)

result = p.findall("life is too short")
print(result)

for r in result:
    print(r)