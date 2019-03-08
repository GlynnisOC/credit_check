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

  def test_it_fixes_digits_greater_than_9
    assert_equal [1, 5, 8, 1, 7, 0, 7, 9, 4, 3, 5, 9, 1, 2, 8, 0], @credit_check.digits_greater_than_9
  end

  def test_it_returns_the_digits_sum
    assert_equal 70, @credit_check.digits_sum
  end
end 
