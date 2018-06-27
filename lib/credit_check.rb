class CreditCheck
  attr_reader :cc_num


  def initialize(cc_num)
    @cc_num = cc_num
  end

  # def validate
  #   reversed = reverse(@cc_num)
  #   doubled = double(reverse)
  #   summed = sum_over_9(doubled)
  #   total = sum(summed)
  #   validated = valid?(total)
  #   answer = response(validated)
  # end

  def reverse
    @cc_num.to_i.digits
  end

  def double
    reverse.map.with_index do |digit, index|
      if index.odd?
        digit *= 2
      else
        digit
      end
    end
  end

  def sum_over_9
    double.map do |number|
      if number > 9
        number.digits.sum
      else
        number
      end
    end
  end

  def sum
    sum_over_9.sum
  end

  def valid_number?
    if sum % 10 == 0
      true
    else
      false
    end
  end

  def validation_output
    if valid_number? == true
      "The number #{@cc_num.to_i} is valid!"
    else
      "The number #{@cc_num.to_i} is invalid!"
    end
  end

end
