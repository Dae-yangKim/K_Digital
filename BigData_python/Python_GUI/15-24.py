import pymysql
from tkinter import *
from tkinter import messagebox
from tkinter.simpledialog import *
import random

## 함수 선언 부
def connectMySQL() :
    global conn, curr, window, canvas
    conn = pymysql.connect(host='127.0.0.1', user='root', password='1234', db='KingHotDB', charset='utf8')
    curr = conn.cursor()

def closeMySQL() :
    global conn, curr, window, canvas
    curr.close()
    conn.close()
    curr, conn = None, None

def randomColor() :
    COLORS = ["black",  "red", "green", "blue", "magenta", "orange", "brown", "maroon", "coral"]
    return random.choice(COLORS)

def clearMap() :
    global conn, curr, window, canvas
    canvas.destroy()
    canvas = Canvas(window, height=SCR_HEIGHT, width=SCR_WIDTH) 
    canvas.pack()

def displayRestaurant() :
    global conn, curr, window, canvas
    connectMySQL()

    sql = "SELECT restName, ST_AsText((ST_Buffer(restLocation, 3))) FROM Restaurant"
    curr.execute(sql)
    
    while True :
        row = curr.fetchone()
        if not row :
            break
        restName, gisStr = row
        start = gisStr.index('(')
        start = gisStr.index('(', start + 1)
        start += 1
        end = gisStr.index(')')
        gisStr = gisStr[start:end]      # "x y,x y,...."
        gisList = gisStr.split(',')         # ["x y", "x y", ....]
        newGisList = []
        for xyStr in gisList :
            x, y = xyStr.split(' ') # "x y"를 "x"와  "y"로 분리
            x, y = float(x), float(y) # 실수로 형 변환
            xyList = [ (x+90)*2, SCR_HEIGHT-(y+90)*2] # [x, y] : 화면 좌표(90,90 추가) 및 2배 확대
            newGisList.append(xyList) #[ [x,y], [x,y] .... ]

        myColor = randomColor()
        canvas.create_line(newGisList, fill=myColor, width=3)
        # 해당 위치에 글자 쓰기.
        tx, ty = xyList[0], xyList[1]+15 # 오른쪽 아래에 쓰기
        canvas.create_text([tx, ty],fill=myColor,text=restName.split(' ')[2]) # 0호점 만 쓰기.

    closeMySQL()

def displayManager() :
    global conn, curr, window, canvas
    pass

def displayRoad() :
    global conn, curr, window, canvas
    pass

def showResMan() :
    global conn, curr, window, canvas
    pass

def showNearest() :
    global conn, curr, window, canvas    
    pass

## 전역 변수부
conn, curr = None, None
window, canvas = None, None

SCR_WIDTH, SCR_HEIGHT = 360, 360

## 메인 코드부
window=Tk()
window.title("왕매워 짭뽕 Ver 0.1")
canvas = Canvas(window, height=SCR_HEIGHT, width=SCR_WIDTH) 
canvas.pack()

mainMenu = Menu(window)
window.config(menu=mainMenu)

gis1Menu = Menu(mainMenu)
mainMenu.add_cascade(label="GIS 데이터 보기", menu=gis1Menu)
gis1Menu.add_command(label="체인점 보기", command=displayRestaurant)
gis1Menu.add_command(label="관리자 보기", command=displayManager)
gis1Menu.add_command(label="도로 보기", command=displayRoad)
gis1Menu.add_separator()
gis1Menu.add_command(label="화면 지우기", command=clearMap)
gis1Menu.add_separator()

gis2Menu = Menu(mainMenu)
mainMenu.add_cascade(label="GIS 데이터 분석", menu=gis2Menu)
gis2Menu.add_command(label="관리자별 담당 체인점", command=showResMan)
gis2Menu.add_command(label="가장 가까운 체인점", command=showNearest)

window.mainloop()