
class Credit_check
  def each_digit
    card_number = "5541808923795240"
    card_number.each_char.map do |char|
      char.to_i
    end
  end

  def double_every_other_digit
    # require 'pry'; binding.pry
    doubled_digits = []
    each_digit.each_with_index.map do |digit, index|
      if (index % 2 != 0)
        doubled_digits << digit * 2
      else
        doubled_digits << digit
      end
    end
    doubled_digits
  end
end

# Output
## If it is valid, print "The number [card number] is valid!"
## If it is invalid, print "The number [card number] is invalid!"
