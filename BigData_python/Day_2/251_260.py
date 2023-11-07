# 251
# 클래스는 여러 객체들이 공통적으로 가지고 있는 닮은 특성을 정의해둔 객체들의 설계도 같은 것이고 
# 객체는 고유의 속성을 가지는 물리적 , 추상적인 모든 대상을 말합니다
# 인스턴스는 클래스를 통해서 만들어낸 객체 하나하나를 뜻합니다

# 252
class Human:
    def __init__(self , name , age , sex) -> None:
        self.name = name
        self.age = age
        self.sex = sex
    def __del__(self):
        print("나의 죽음을 알리지 말라")
    def who(self):
        print(f"이름: {self.name}, 나이: {self.age}, 성별: {self.sex}")
    def setInfo(self , name , age , sex):
        self.name = name
        self.age = age
        self.sex = sex

# 253
areum = Human()

# 254
areum = Human()

# 255
areum = Human("아름" , 25 , "여자")

# 256
print(f"이름: {areum.name}, 나이: {areum.age}, 성별: {areum.sex}")

# 257
areum.who()

# 258
areum = Human("모름" , 0 , "모름")
areum.setInfo("아름" , 25 , "여자")

# 259
areum = Human("아름" , 25 , "여자")
del areum

# 260
# self가 없기 때문입니다. 만약 이 상태에서 코드를 실행하고 싶다면
# mystock.print(mystock) 이렇게 해야 실행이 가능합니다.