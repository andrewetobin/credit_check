require 'minitest/autorun'
require 'minitest/pride'
require './lib/credit_check'

class CreditCheckTest < Minitest::Test

  def test_it_can_reverse_string_array_of_intergers
    cc = CreditCheck.new("4929735477250543")

    expected = [3, 4, 5, 0, 5, 2, 7, 7, 4, 5, 3, 7, 9, 2, 9, 4]
    assert_equal expected, cc.reverse
  end

  def test_it_can_double_every_other
    cc = CreditCheck.new("4929735477250543")

    expected = [3, 8, 5, 0, 5, 4, 7, 14, 4, 10, 3, 14, 9, 4, 9, 8]
    assert_equal expected, cc.double
  end

  def test_it_can_add_numbers_over_9
    cc = CreditCheck.new("4929735477250543")

    expected = [3, 8, 5, 0, 5, 4, 7, 5, 4, 1, 3, 5, 9, 4, 9, 8]
    assert_equal expected, cc.add
  end




end
