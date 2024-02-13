from turtle import * 

bgcolor('black')
title("Programming ka Keeda")
screensize(800,800)

pensize(3)
shape('triangle')
size = 20
stamp
speed(0)
left(90)

color("red")
for step in range(40):
    forward(100)
    left(180)
    forward(100)
    left(9)

color('yellow')
for step in range(36):
    forward(130)
    left(180)
    forward(130)
    left(10)

color('blue')
for step in range(20):
    forward(150)
    left(180)
    forward(150)
    left(18)

color('yellow')
for stamps in range(12):
    penup()
    forward(170)
    pendown()
    forward(10)
    penup()
    forward(10)
    stamp()
    right(30)
    penup()
    setpos(0,0)


text = Turtle()
text.color("red")
text.penup()
text.setpos(0,-240)
text.write("Happy New Year 2024", True, align="center", font=("Monsterrat", 25, "bold"))
text.setpos(0,-260)

done()
