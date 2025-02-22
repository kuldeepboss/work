from turtle import *
import turtle

t = Turtle()
s = turtle.Screen()
s.bgcolor('black')
t.speed(100)
t.color('yellow')

def circle(length, angle):
    for i in range(4):
        t.forward(length)
        t.left(angle)

for i in range(120):
    circle(210,1000)
    t.left(11)

from turtle import *
import turtle
t = Turtle()
s = turtle.Screen()
s.bgcolor('green')
t.speed(100)
t.color('red')

def circle(length, angle):
    for i in range(4):
        t.forward(length)
        t.right(angle)

for i in range(120):
    circle(210,1000)
    t.right(11)
