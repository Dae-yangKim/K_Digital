# 241
import datetime as dt
print(dt.datetime.now())

# 242
print(type(dt.datetime.now()))

# 243
now = dt.datetime.now()

for i in range(5 , 0 , -1):
    delta = dt.timedelta(days = i)
    print(now - delta)

# 244
now = dt.datetime.now()

print(now.strftime("%H:%M:%S"))

# 245
string = "2020-05-04"

ret = dt.datetime.strptime(string , "%Y-%m-%d")
print(ret , type(ret))