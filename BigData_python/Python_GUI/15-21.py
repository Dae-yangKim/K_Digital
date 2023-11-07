import pymysql
from tkinter import *
from tkinter import messagebox

## 함수 선언부
def insertData():
    con , cur = None , None
    data1 , data2 , data3 , data4 = "" , "" , "" , ""
    sql = ""

    conn = pymysql.connect(host = '127.0.0.1' , user = 'root' , password = 'eodid9523' , db = 'hanbitDB' , charset = 'utf8')
    cur = conn.cursor()
    
    data1 = edt1.get()
    data2 = edt2.get()
    data3 = edt3.get()
    data4 = edt4.get()