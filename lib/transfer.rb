class Transfer
  attr_accessor :status
  attr_reader :sender, :receiver, :amount

  def initialize(sender, receiver, amount)
    @sender= sender
    @receiver= receiver
    @amount= 10
    @status= "pending"
  end 

  def valid?
    if @sender.BankAccount.valid? and
        @receiver.BankAccount.valid?
        true 
    else 
      false 
    end 
  end 
  
  def execute_transaction
    if self.valid? 
      @sender.BankAccount - @trasnfer_amount 
      @receiver.BankAccount + @transfer_amount
    else 
      "Transaction rejected. Please check your account balance."
    end 
  end 
  
  def reverse_transfer
  end 
  
  
end
