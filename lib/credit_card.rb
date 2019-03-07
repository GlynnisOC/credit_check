class CreditCard
  attr_reader :number, :limit

  def initialize(number, limit)
    @number = number
    @limit = limit
  end

  def is_valid?
  end 
end
