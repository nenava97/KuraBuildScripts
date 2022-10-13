#manipulate json file using python
import json
'''
var1 = '{ "name":"Peter Parker", "age":21, "borough":"Queens"}'

print(type(var1)) #is string type because in quotes

var2 = json.loads(var1) #string to data type similar to json

print(type(var2)) #dictonary type
print(var2["age"])

print("-----BREAK-----")

varA = {'GiantsWins': 4}
varB = json.dumps #dictionary to strings 

print(type(varB)) #string

print("-----BREAK-----")
'''

example = {
  "Teams":[
    {"Giants":[{"wins":4}, {"losses":1}]},
    {"Patriots":[{"wins":2}, {"losses":3}]},
    {"Chiefs":[{"wins":4}, {"losses":1}]}
  ]
}

print(example["Teams"]) #access list in the key value for Teams
print(type(example["Teams"]))

print("-----BREAK-----")

print(example["Teams"][1]) #access dictionary for Patriots
print(type(example["Teams"][1]))

print("-----BREAK-----")

print(example["Teams"][1]["Patriots"]) #access list in the key value for Patriots
print(type(example["Teams"][1]["Patriots"]))

print("-----BREAK-----")

print(example["Teams"][0]["Giants"][0]["wins"]) #access the integer number of wins which is the first value in the list for Giants
print(type(example["Teams"][0]["Giants"][0]["wins"]))

print("-----BREAK-----")
