import pymysql

conn , cur = None , None
data1 , data2 , data3 , data4 = '','','',''
sql = ""

try:
    conn = pymysql.connect(host = '127.0.0.1' , user = 'root' , password = 'eodid9523' , db = 'hanbitDB' , charset = 'utf8')
    cur = conn.cursor()
    
    while True:
        data1 = input("사용자 ID ==> ")
        if data1 == "":
            break
        data2 = input("사용자 이름 ==> ")
        data3 = input("사용자 이메일 ==> ")
        data4 = input("사용자 출생년도 ==> ")
        sql = "insert into userTable values('" + data1 + "','" + data2 + "','" + data3 + "'," + data4 + ")"
        cur.execute(sql)
except:
    print('연결 실패')

conn.commit()
conn.close()