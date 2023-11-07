# 261
class Stock:
    pass

# 262
class Stock:
    def __init__(self,  category , code):
        self.category = category
        self.code = code

# 263
class Stock:
    def __init__(self,  category , code):
        self.category = category
        self.code = code
    def set_name(self , name):
        self.name = name

# 264
class Stock:
    def __init__(self,  category , code):
        self.category = category
        self.code = code
    def set_name(self , name):
        self.name = name
    def set_code(self , code):
        self.code = code

# 265
class Stock:
    def __init__(self,  category , code):
        self.category = category
        self.code = code
    def set_name(self , name):
        self.name = name
    def set_code(self , code):
        self.code = code
    def get_name(self):
        return self.name
    def get_code(self):
        return self.code
    
samsung = Stock("삼성전자" , "005930")
print(samsung.get_name())
print(samsung.get_code())

# 266
class Stock:
    def __init__(self,  category , code , PER , PBR , per):
        self.category = category
        self.code = code
        self.PER = PER
        self.PBR = PBR
        self.per = per
    def set_name(self , name):
        self.name = name
    def set_code(self , code):
        self.code = code
    def get_name(self):
        return self.name
    def get_code(self):
        return self.code

# 267
samsung = Stock("삼성전자" , "005930" , 15.79 , 1.33 , 2.83)

# 268
class Stock:
    def __init__(self,  category , code , PER , PBR , per):
        self.category = category
        self.code = code
        self.PER = PER
        self.PBR = PBR
        self.per = per
    def set_name(self , name):
        self.name = name
    def set_code(self , code):
        self.code = code
    def get_name(self):
        return self.name
    def get_code(self):
        return self.code
    def set_per(self , per):
        self.per = per
    def set_pbr(self , PBR):
        self.PBR = PBR
    def set_dividend(self , PER):
        self.PER = PER

# 269
samsung.dividend(12.75)

# 270
arr = [Stock("삼성전자" , "005930" , 15.79 , 1.33 , 2.83) ,
       Stock("현대차" , "005380" , 8.70 , 0.35 , 4.27) ,
       Stock("LG전자" , "066570" , 317.34 , 0.69 , 1.37)]

for stock in arr:
    print(stock.get_code())
    print(stock.PER)