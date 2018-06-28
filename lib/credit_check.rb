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
    doubled = []
    reversed.each.with_index do |digit, index|
      if index.odd?
        doubled << digit *= 2
      else
        doubled << digit
      end
    end
    return doubled
  end

  def sum_over_9(doubled)
    summed = []
    doubled.each do |number|
      if number > 9
        summed << number.digits.sum
      else
        summed << number
      end
    end
    return summed 
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
