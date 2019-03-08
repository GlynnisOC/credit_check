
class Credit_check
  def each_digit
    card_number = "5541808923795240"
    card_number.each_char.map do |char|
      char.to_i
    end
  end

  def double_every_other_digit(card_number)
    digits = card_number.split("").reverse
    doubled_digits = []
    # require 'pry'; binding.pry
    digits.each_with_index do |digit, index|
      if(index % 2 != 0)
        doubled_digits << digit.to_i * 2
      else
        doubled_digits << digit.to_i
      end
    end
    doubled_digits.reverse
  end

  # def digits_greater_than_9
  # end
end

# Output
## If it is valid, print "The number [card number] is valid!"
## If it is invalid, print "The number [card number] is invalid!"
