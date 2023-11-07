"""정규 표현식(regular expressions)은 복잡한 문자열을 처리할 때 사용하는 기법으로 , 파이썬만의 고유 문법이 아니라
문자열을 처리하는 모든 곳에서 사용하는 일종의 형식 언어를 뜻한다."""

# 문제 : 주민등록번호를 포함하고 있는 텍스트가 있다. 이 텍스트에 포함된 모든 주민등록번호의 뒷자리를 * 문자로 변경해 보자.

# 먼저 정규식을 모르는 상태에서 위의 문제를 풀기 위해서는

data = """
park 800905-1049118
kim 700905-1059119
"""

result = []
for line in data.split("\n"):
    word_result = []
    for word in line.split(" "):
        if len(word) == 14 and word[:6].isdigit() and word[7:].isdigit():
            word = word[:6] + "-" + "*******"
        word_result.append(word)
    result.append(" ".join(word_result))

print("\n".join(result))

# 하지만 정규 표현식을 아는 상태에서는

import re

data = """
park 800905-1049118
kim 700905-1059119
"""

pat = re.compile("(\d{6})[-]\d{7}")
print(pat.sub("\g<1>-*******" , data))