require 'pry'

class Transfer

attr_accessor :sender, :receiver, :status, :amount

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

  def valid?
    sender.valid? && receiver.valid?
  end

  def bad_transfer

    if self.sender.valid? == false
    #if sender.valid? == false
    self.status = "rejected"
end
end

  def execute_transaction
  if self.sender.valid? == false
    #self.bad_transfer
"Transaction rejected. Please check your account balance."

#elsif valid? && self.status == "pending"
#      sender.balance -= amount
#      receiver.balance += amount
#      self.status = "complete"

    #elsif bad_transfer
#{}"Transaction rejected. Please check your account balance."
    end
end

end
