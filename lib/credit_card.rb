class CreditCard
  attr_reader :card_number, :limit

  def initialize(card_number, limit)
    @card_number = card_number
    @limit = limit
  end

  def is_valid?
    # require 'pry'; binding.pry
    if Credit_check.new.valid_card?(card_number) == true
      return true
    else Credit_check.new.valid_card?(card_number) == false
      return false
    end
  end

  def last_four
    @card_number.split(//).last(4).join
  end
end
