class Credit_check
  def each_digit(card_number)
    card_number.each_char.map do |char|
      char.to_i
    end
  end

  def double_every_other_digit(card_number)
    digits = card_number.split("").reverse
    doubled_digits = []
    digits.each_with_index do |digit, index|
      if(index % 2 != 0)
        doubled_digits << digit.to_i * 2
      else
        doubled_digits << digit.to_i
      end
    end
    doubled_digits.reverse
  end

  def digits_greater_than_9(card_number)
    digits = double_every_other_digit(card_number)
    higher_than_9 = []
    digits.each do |digit|
      if (digit >= 10)
        higher_than_9 << digit - 9
      else
        higher_than_9 << digit
      end
    end
    higher_than_9
  end

  def digits_sum(card_number)
    digits_greater_than_9(card_number).sum
  end

  def divisible_by_10?(card_number)
    digits_sum(card_number) % 10 == 0
  end

  def valid_card?(card_number)
    if divisible_by_10?(card_number) == true
      return true
    else divisible_by_10?(card_number) == false
      return false
    end
  end

  def validation_output(card_number)
    if valid_card?(card_number) == true
      "The number is valid!"
    else valid_card?(card_number) == false
      "The number is invalid!"
    end
  end
end
