=begin
An Account object with public methods to display balances and transfer funds, but which rely on private methods to make sure the user's PIN (personal identification number) is correct before approving transactions.
=end
class Account
  attr_reader :name, :balance
  def initialize(name, balance=100)
      @name = name
      @balance = balance
  end
  
  private
  def pin
      @pin = 1234
  end
  
  def pin_error
      "Access denied: incorrect PIN."
  end
  
  public 
  def display_balance(pin_number)
      puts pin_number == pin ? "Balance: $#{@balance}.": pin_error
  end
  
  def withdraw(pin_number, amount)
    if pin_number == pin 
        @balance -= amount
        puts "Withdrew #{amount}. New balance: $#{@balance}."
    else 
        puts pin_error
    end
  end  
  
  def getpin(name, balance)
      pin if name == @name && balance == @balance
  end
  
  def deposit(pin_number, amount)
    if pin_number == pin 
        @balance += amount
        puts "Deposited #{amount}. New balance: $#{@balance}."
    else 
        puts pin_error
    end
  end
 
end

class CheckingAccount < Account; end
    
checking_account = CheckingAccount.new("Rajesh", 1_000_000_000)
checking_account.display_balance(1234)
checking_account.deposit(1234, 1000_000)
checking_account.withdraw(1234, 4000_000)
puts checking_account.getpin("Rajesh", 997000000)