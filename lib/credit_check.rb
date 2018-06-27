class CreditCheck
  attr_reader :cc_num


  def initialize(cc_num)
    @cc_num = cc_num
  end

  def reverse
    @cc_num.to_i.digits
  end

  def double_every_other
    reverse.map_with_index | 

  end


end
