class Transfer
  attr_accessor :status
  attr_reader :sender, :receiver, :amount

  def initialize(sender, receiver, amount)
    @sender= sender
    @receiver= receiver
    @amount= amount
    @status= "pending"
  end 

  def valid?
    sender.valid? and receiver.valid?
  end 
  
  def execute_transaction
    if self.valid? and sender.balance > amount
      sender.balance -= amount
      receiver.balance += amount
      self.status = "complete"
    else 
      self.status = "rejected"
      "Transaction rejected. Please check your account balance."
    end 
  end 
  
  def reverse_transfer
    
  end 
  
  
end
