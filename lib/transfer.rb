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
    self.status = "rejected"
  end

  def execute_transaction
    if valid? && amount < sender.balance
      sender.balance -= amount
      receiver.balance += amount
      self.status = "complete"
    else
"Transaction rejected. Please check your account balance."
    end
end

end
