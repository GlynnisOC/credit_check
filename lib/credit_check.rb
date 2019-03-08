
class Credit_check
  def each_digit
    card_number = "5541808923795240"
    card_number.each_char.map do |char|
      char.to_i
    end
  end

  def double_every_other_digit
    # require 'pry'; binding.pry
    each_digit.each_with_index do |a, b|
      if (b % 2 == 0)
        a = a * 2
      end
      each_digit.map! do |x|
        if (a > 9)
          a = a - 9
        end
      end
    end
  end
end

# Output
## If it is valid, print "The number [card number] is valid!"
## If it is invalid, print "The number [card number] is invalid!"
