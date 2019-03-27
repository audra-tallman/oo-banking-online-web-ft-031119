class BankAccount
  attr_accessor :balance, :status
  attr_reader :name
  
  
  def initialize(name)
    @name= name
    @balance= 1000
    @status= "open"
  end 

  def deposit(num)
    @balance += num
  end 
  
  def display_balance
    @balance
  end 
  
  def valid?
    if @status == "open"
      "valid"
    elsif @balance > 0
      "valid"
    else
      "invalid"
    end 
  end 
  
  def close_account
    @balance = 0
    @status = "closed"
  end 

end
