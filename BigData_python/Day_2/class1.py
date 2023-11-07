class Calculator:
    def __init__(self):
        self.result = 0
    
    def add(self , num):
        self.result += num
        return self.result
    def sub(self , num):
        self.result -= num
        return self.result
    def mul(self , num):
        self.result *= num
        return self.result
    def div(self , num):
        try:
            self.result /= num
            return int(self.result)
        except:
            return "나눌 수 없는 숫자입니다."

cal1 = Calculator()
print(cal1.add(5))
print(cal1.sub(2))
print(cal1.mul(11))
print(cal1.div(3))