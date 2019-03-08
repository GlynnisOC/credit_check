class CreditCard
  attr_reader :card_number, :limit

  def initialize(card_number, limit)
    @card_number = card_number
    @limit = limit
  end

  def is_valid?
  end

  def last_four
    @card_number.split(//).last(4).join
  end
end
