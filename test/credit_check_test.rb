require 'minitest/autorun'
require 'minitest/pride'
require './lib/credit_check'

class Credit_checkTest < Minitest::Test
  def setup
    @credit_check = Credit_check.new
  end

  def test_it_exists
    assert_instance_of Credit_check, @credit_check
  end

  def test_it_separates_each_digit
    assert_equal [5, 5, 4, 1, 8, 0, 8, 9, 2, 3, 7, 9, 5, 2, 4, 0], @credit_check.each_digit
  end

  def test_it_doubles_every_other_digit
    assert_equal [10, 5, 8, 1, 16, 0, 16, 9, 4, 3, 14, 9, 10, 2, 8, 0], @credit_check.double_every_other_digit("5541808923795240")
  end
end
