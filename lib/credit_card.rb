class CreditCard
  attr_reader :card_number, :limit

  def initialize(card_number, limit)
    @card_number = card_number
    @limit = limit
  end

  def is_valid?
    # require 'pry'; binding.pry
    if @credit_check.valid_card? == true
      return true
    else @credit_check.valid_card? == false
      return false
    end
  end

  def last_four
    @card_number.split(//).last(4).join
  end
end
