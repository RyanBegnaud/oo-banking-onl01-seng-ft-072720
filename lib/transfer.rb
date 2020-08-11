class Transfer
  attr_accessor :sender, :receiver, :amount
  
  def initialize(sender, reciever, amount)
    @sender = sender
    @reciever = reciever
end
end
