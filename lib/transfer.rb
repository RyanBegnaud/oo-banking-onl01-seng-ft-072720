class Transfer
  attr_accessor :sender, :receiver, :amount, :status 
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

  def valid? 
   if sender.valid? == true && receiver.valid? == true 
     true 
   else 
     false 
   end
  end
  
  def execute_transaction
    if valid? == true 
      @sender.balance = @sender.balance - @amount
      @receiver.balance = @receiver.balance + @amount
    else
      "no can doosville babydoll"
    end
  end

end
