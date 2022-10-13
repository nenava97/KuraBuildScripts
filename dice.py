#Virtual Dice Code (Classes do more functions)
import random

class Dice:
  def __init__(self, name, color, sides): #constructor for Dice objects with parameters 
    self.name = name #attributes of all objects of class
    self.color = color
    self.sides = sides
    roll = 0 #regular function variable, if want to remember the dice roll of last need to change to attribute
    print(f"You made a dice named: {self.name} and its color is: {self.color}") #to capture function in print statement need f""
  #making DiceRoll Function belonging to class
  def diceRoll(self):
    roll = random.randint(1,self.sides) #give random integer from random package
    print(f"Your {self.color} dice {self.name} rolled {roll}.")
#---------- CLASS ENDS --------------

    
#outputs to console
#Creating 2 Dice objects using the class
myDice = Dice("Lucky","red", 6) #instantiating object Dice class
myOtherDice = Dice("BadLuck","blue", 13)

#Running the diceRoll function on the objects
myDice.diceRoll()
myOtherDice.diceRoll() 

#operator accessing the name attribute
print(myDice.name)
print(myOtherDice.color)
