#Python practice of basic operators and function creation

#greet functions

def greet(name):
  print('Hello', name,"!")
greet('Nicole')

def hello_name(name):
  return "Hello {}!".format(name)

print(hello_name("Nicole"))

#sum functions

def addFun(numOne,numTwo):
  return numOne + numTwo
print(addFun(-3,-6))

def addition(a, b):
  return a + b
print(addition(2, 3))

#convert minutes to seconds function

def multiply(a):
  return a * 60
print(multiply(5))

def convert(minutes):
  return minutes * 60
print(convert(5))

#function that take base and height of triangle and returns the area

def tri_area(a,b):
  return a * b // 2
print(tri_area(7,4))

def tri_area(base,height):
  return base * height * .5
print(tri_area(7,4))

#function that converts hours into seconds

def how_many_seconds(hours):
  return hours * 3600
print(how_many_seconds(24))

#function that finds the maximum range of a triangle's third edge

def next_edge(side1, side2):
  return side1 + side2 -1
print(int(next_edge(5,7)))

def next_edge(*args):
  return sum(args) -1
print(next_edge(5,7))

#function operator which provides remainder of division operation

def remainder(a,b):
  return a % b
print(remainder(7,2))

#function that finds the perimeter of a rectangle 

def find_perimeter(a,b):
  return 2 * a + 2 * b
print(find_perimeter(2,9))

find_perimeter1=lambda a,b:2*(a+b)
print(find_perimeter1(2,9))

#function that take voltage and current and returns calculated power

circuit_power=lambda volt,curr:volt * curr
print(circuit_power(480,20))

#function that takes a base number to an exponent number and returns calculation

def calculate_exponent(a,b):
  return a ** b
print(calculate_exponent(3,3))

#function that squares a number

def squared(num):
  return num ** 2
print(squared(100))

#Function that estimates football team points for game losses, wins and draws.

def football_points(wins, draws, losses):
  return wins * 3 + draws
print(football_points(0,0,1))

#function that counts legs of farm animals 

def animals(cheep, moo, oink):
  return cheep * 2 + (moo + oink) * 4
print(animals(5,2,8))
