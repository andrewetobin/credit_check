class CreditCheck

  def valid_number?(card_number)
    reversed = reverse(card_number)
    doubled = double(reversed)
    summed = sum_over_9(doubled)
    total = sum(summed)
    validate(total)
  end

  def validation_output(card_number)
    if valid_number?(card_number)
      "The number #{card_number.to_i} is valid!"
    else
      "The number #{card_number.to_i} is invalid!"
    end
  end

  def reverse(card_number)
    card_number.digits
  end

  def double(reversed)
    reversed.map.with_index do |digit, index|
      if index.odd?
        digit *= 2
      else
        digit
      end
    end
  end

  def sum_over_9(doubled)
    doubled.map do |number|
      if number > 9
        number.digits.sum
      else
        number
      end
    end
  end

  def sum(summed)
    summed.sum
  end

  def validate(total)
    if total % 10 == 0
      true
    else
      false
    end
  end
end
