from turtle import *
from time import *
title("Mahuley Ji")
bgcolor('black')
pencolor('red')
sleep(2)

def om(x,y):
    penup()
    goto(x,y)
    pendown()

om(-200,50)    

fillcolor('#F28C28')
begin_fill()
seth(-90)
circle(200,70)
circle(70,180)
seth(110)
forward(30)
seth(0)
circle(60,100)
circle(80,120)
seth(130)
fd(30)
seth(50)
circle(-100,120)
circle(-90,90)
seth(-19)
circle(-60,50)
seth(0)
circle(60,90)
circle(-70,180)
fd(50)
circle(-90,120)
seth(-15)
circle(90,90)
seth(90)
fd(50)
circle(40,180)
circle(-75,90)
seth(-65)
circle(-90,132)
circle(-210,80)
end_fill()

om(30,210)
begin_fill()
seth(-70)
circle(120,110)
seth(120)
fd(40)
seth(-140)
circle(-120,90)
end_fill()

om(140,220)
begin_fill()
circle(25)
hideturtle()
end_fill()

done()
