# 291

arr = ['005930' , '005380' , '035420']

with open("C:/Users/user/Desktop/매수종목1.txt" , 'w') as f:
    for data in arr:
        f.write(data)

# 292

arr = ['005930 삼성전자' , '005380 현대차' , '035420 NAVER']

with open("C:/Users/user/Desktop/매수종목2.txt" , 'w') as f:
    for data in arr:
        f.write(data)

# 293

import csv

f = open("C:/Users/user/Desktop/매수종목.csv" , mode = "wt" , encoding = "cp949" , newline = "")
writer = csv.writer(f)
writer.writerow(["종목명" , "종목코드" , "PER"])
writer.writerow(["삼성전자" , "005930" , "15.79"])
writer.writerow(["NAVER" , "035420" , "55.82"])
f.close()

# 294

with open("C:/Users/user/Desktop/매수종목1.txt" , "r" , encoding = 'utf-8') as f:
    lines = f.readlines()
    
    arr = []
    for line in lines:
        code = line.strip()
        arr.append(code)

print(code)

# 295

with open("C:/Users/user/Desktop/매수종목2.txt" , "r" , endcoding = 'utf-8') as f:
    lines = f.readlines()

    data = dict()
    for lien in lines:
        codes = lines.srtip().split()
        data[codes[0]] = codes[1]
        
print(data)