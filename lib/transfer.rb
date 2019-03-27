class Transfer
  attr_accessor :sender, :receiver, :status
  :transfer_amount

  def initialize(sender, receiver, transfer_amount)
    @sender= sender
    @receiver= receiver
    @transfer_amount= 10
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
      ""
    
  end 
  
end
