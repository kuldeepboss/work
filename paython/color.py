import turtle
import colorsys
s=turtle.Screen()
t=turtle.Turtle()
turtle.bgcolor('black')
m=0.9
t.shape('turtle')
for i in range(130): 
    c = colorsys.hsv_to_rgb(m,1, 0.99)
    m +=0.33
    turtle.tracer(i-150)
    t.pensize(5)
    t.pencolor(c)
    t.forward(0+i)
    t.right(20)
    t.forward(1+i)
    t.right(40)
    t.forward(2+i)
    t.right(60)
    t.forward(3+i)
    t.right(80)
    t.forward(4+i)
    t.forward(5+i)  
turtle.done()
