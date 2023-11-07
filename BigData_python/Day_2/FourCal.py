class FourCal:
    def setdata(self , first , second):
        self.first = first
        self.second = second
    def add(self):
        return self.first + self.second
    def sub(self):
        return self.first - self.second
    def mul(self):
        return self.first * self.second
    def div(self):
        try:
            return self.first // self.second
        except:
            return "나눌 수 없습니다."

cal1 = FourCal()
cal1.setdata(10 , 23)
print(cal1.add())
print(cal1.sub())
print(cal1.mul())
print(cal1.div())