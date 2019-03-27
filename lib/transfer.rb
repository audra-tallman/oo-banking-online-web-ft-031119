class Transfer
  attr_accessor :sender, :receiver, :status
  :amount

  def initialize(sender, receiver, amount)
    @sender= sender
    @receiver= receiver
    @amount = 100
    @status = "pending"
  end 



end
