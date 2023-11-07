# 과목 : 국어 , 영어 , 수학
# 학생 : 학번
# 다음과 같이 학생의 성적

class Student:

    def __init__(self , code , korean , english , math):
        self.code = code
        self.korean = korean
        self.english = english
        self.math = math

    def total(self):
        return (self.korean + self.english + self.math)
    def average(self):
        return round(self.total() / 3 , 2)
    
    def getKorean(self):
        return self.korean
    def getEnglish(self):
        return self.english
    def getMath(self):
        return self.math

# 학생들
s1 = Student(202301 , 80 , 90 , 87)
s2 = Student(202302 , 70 , 80 , 99)
s3 = Student(202303 , 99 , 86 , 65)
s4 = Student(202304 , 77 , 88 , 87)
s5 = Student(202305 , 99 , 77 , 70)

# 총점 , 평균
print("<총점 , 평균>")
students = [s1 , s2 , s3 , s4 , s5]
for i in range(len(students)):
    print(f"{i + 1}번째 학생의 총점:{students[i].total()} , 평균:{students[i].average()}")

# 1등인 학생의 총점과 평균
print("<1등 학생의 총점과 평균>")
students = sorted(students , reverse = True , key = lambda x : x.average())
print(f"1등인 학생의 총점 : {students[0].total()} , 평균 : {students[0].average()}")

# 1등과 꼴등 간의 총점 차
print("<1등과 꼴등 간의 총점 차이>")
print(f"1등과 꼴등간의 총점 차 : {students[0].total() - students[len(students) - 1].total()}")

# 과목별 평균
print("<과목별 평균>")
korean = 0
english = 0
math = 0
for s in students:
    korean += s.getKorean()
    english += s.getEnglish()
    math += s.getMath()
print(f"국어 총 평균 : {round(korean / 5 , 2)}")
print(f"영어 총 평균 : {round(english / 5 , 2)}")
print(f"수학 총 평균 : {round(math / 5 , 2)}")

# 총 평균
print("<총 평균>")
summ = 0
for s in students:
    summ += s.total()

print(f"총 평균 : {round(summ / 5 , 2)}")
