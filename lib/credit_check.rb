
class Credit_check
  def each_digit
    card_number = "5541808923795240"
    card_number.each_char.map do |char|
      char.to_i
    end
  end

  def double_every_other_digit
    each_digit.
  end
end

# Output
## If it is valid, print "The number [card number] is valid!"
## If it is invalid, print "The number [card number] is invalid!"
