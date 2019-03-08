require 'minitest/autorun'
require 'minitest/pride'
require './lib/credit_card'
require './lib/credit_check'

class CreditCardTest < Minitest::Test
  def setup
    @creditcard1 = CreditCard.new("5541808923795240", 15000)
  end

  def test_it_exists
    assert_instance_of CreditCard, @creditcard1
  end

  def test_it_has_attributes
    assert_equal "5541808923795240", @creditcard1.card_number
    assert_equal 15000, @creditcard1.limit
  end

  def test_it_returns_last_four
    assert_equal "5240", @creditcard1.last_four
  end

  def test_is_card_valid
    assert_equal true, @creditcard1.is_valid?
  end
end
