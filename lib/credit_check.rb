class CreditCheck
  attr_reader :cc_num


  def initialize(cc_num)
    @cc_num = cc_num
  end

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

  def add
    double.map do |number|
      if number > 9
        number.digits.sum
      else
        number
      end
    end 
  end




end
