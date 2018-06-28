require 'minitest/autorun'
require 'minitest/pride'
require './lib/credit_check'

class CreditCheckTest < Minitest::Test

  def test_it_exists
    cc = CreditCheck.new

    assert_instance_of CreditCheck, cc
  end

  def test_it_can_reverse_string_array_of_intergers
    cc = CreditCheck.new

    expected_1 = [3, 4, 5, 0, 5, 2, 7, 7, 4, 5, 3, 7, 9, 2, 9, 4]
    expected_2 = [0, 4, 2, 5, 9, 7, 3, 2, 9, 1, 0, 8, 1, 4, 5, 5]
    assert_equal expected_1, cc.reverse(4929735477250543)
    assert_equal expected_2, cc.reverse(5541801923795240)
  end

  def test_it_can_double_every_other
    cc = CreditCheck.new

    expected_1 = [3, 8, 5, 0, 5, 4, 7, 14, 4, 10, 3, 14, 9, 4, 9, 8]
    expected_2 = [0, 8, 2, 10, 9, 14, 3, 4, 9, 2, 0, 16, 1, 8, 5, 10]
    assert_equal expected_1, cc.double([3, 4, 5, 0, 5, 2, 7, 7, 4, 5, 3, 7, 9, 2, 9, 4])
    assert_equal expected_2, cc.double([0, 4, 2, 5, 9, 7, 3, 2, 9, 1, 0, 8, 1, 4, 5, 5])
  end

  def test_it_can_add_numbers_over_9
    cc = CreditCheck.new

    expected_1 = [3, 8, 5, 0, 5, 4, 7, 5, 4, 1, 3, 5, 9, 4, 9, 8]
    expected_2 = [0, 8, 2, 1, 9, 5, 3, 4, 9, 2, 0, 7, 1, 8, 5, 1]
    assert_equal expected_1, cc.sum_over_9([3, 8, 5, 0, 5, 4, 7, 14, 4, 10, 3, 14, 9, 4, 9, 8])
    assert_equal expected_2, cc.sum_over_9([0, 8, 2, 10, 9, 14, 3, 4, 9, 2, 0, 16, 1, 8, 5, 10])
  end

  def test_it_can_sum_all_numbers
    cc = CreditCheck.new

    assert_equal 80, cc.sum([3, 8, 5, 0, 5, 4, 7, 5, 4, 1, 3, 5, 9, 4, 9, 8])
    assert_equal 65, cc.sum([0, 8, 2, 1, 9, 5, 3, 4, 9, 2, 0, 7, 1, 8, 5, 1])
  end

  def test_it_can_determine_if_valid
    cc = CreditCheck.new

    assert_equal true, cc.valid_number?(4929735477250543)
    assert_equal true, cc.valid_number?(342804633855673) #AMEX
    assert_equal false, cc.valid_number?(5541801923795240)
    assert_equal false, cc.valid_number?(342801633855673) #AMEX
  end

  def test_it_can_print_correct_response
    cc = CreditCheck.new

    assert_equal "The number 4929735477250543 is valid!", cc.validation_output(4929735477250543)
    assert_equal "The number 342804633855673 is valid!", cc.validation_output(342804633855673) #AMEX
    assert_equal "The number 5541801923795240 is invalid!", cc.validation_output(5541801923795240)
    assert_equal "The number 342801633855673 is invalid!", cc.validation_output(342801633855673) #AMEX
  end
end
