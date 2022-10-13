#Bank account class
class BankAccount:
  nums = 1000
  def __init__9self, name, balance):#constructor
    self.name = name #attributes
    self.deposit = int(input(f"{self.name} how much would you like to deposit?"))
    self.withdraw = int(input(f"{self.name} how much would you like to withdraw?"))
    self.pin = int(input(f"{self.name} you are making a new account! What is your pin number?"))
    self.accountNum = BankAccount.nums
    BankAccount.nums = BankAccount.nums + 1
    self.transactions = []
    self.balance = balance - self.withdraw + self.deposit



#class functions transfer money, dictionaries
def displayAccount(self):
  check = int(input(f"Hello {self.name}, what is your pin?"))
  if check == self.pin:
    print(f"Hello {self.name}, your balance is: ${self.balance} and your account number is: {self.accountNum}")
    self.transactions.append("Account was displayed")
  else:
    print("ACCESS DENIED!!")
    
def withdraw(self):
  check = int(input(f"Hello {self.name}, what is your pin?"))
  if check =! self.pin:
    print("Access Denied")
else:
  amount = int(input("How much would you like to withdraw?"))
  if amount > self.balance:
    print(f"Um {self.balance} you don't have that much in your account. Try again.")
  else:
    self.balance = self.balance - amount
    print(f"You now have {self.balance} remaining in your account")
    self.transactions.append(f"Withdraw occurred, amount: {amount}")
  #continue 

Account1 = BankAccount("Nicole", 180000)
Account1.balance
