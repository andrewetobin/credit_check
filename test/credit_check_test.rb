require 'minitest/autorun'
require 'minitest/pride'
require './lib/credit_check'

class CreditCheckTest < Minitest::Test

  def test_it_exists
    cc_1 = CreditCheck.new("4929735477250543")

    assert_instance_of CreditCheck, cc_1
  end

  def test_it_can_reverse_string_array_of_intergers
    cc_1 = CreditCheck.new("4929735477250543")
    cc_2 = CreditCheck.new("5541801923795240")

    expected_1 = [3, 4, 5, 0, 5, 2, 7, 7, 4, 5, 3, 7, 9, 2, 9, 4]
    expected_2 = [0, 4, 2, 5, 9, 7, 3, 2, 9, 1, 0, 8, 1, 4, 5, 5]
    assert_equal expected_1, cc_1.reverse
    assert_equal expected_2, cc_2.reverse
  end

  def test_it_can_double_every_other
    cc_1 = CreditCheck.new("4929735477250543")
    cc_2 = CreditCheck.new("5541801923795240")

    expected_1 = [3, 8, 5, 0, 5, 4, 7, 14, 4, 10, 3, 14, 9, 4, 9, 8]
    expected_2 = [0, 8, 2, 10, 9, 14, 3, 4, 9, 2, 0, 16, 1, 8, 5, 10]
    assert_equal expected_1, cc_1.double
    assert_equal expected_2, cc_2.double
  end

  def test_it_can_add_numbers_over_9
    cc_1 = CreditCheck.new("4929735477250543")
    cc_2 = CreditCheck.new("5541801923795240")

    expected_1 = [3, 8, 5, 0, 5, 4, 7, 5, 4, 1, 3, 5, 9, 4, 9, 8]
    expected_2 = [0, 8, 2, 1, 9, 5, 3, 4, 9, 2, 0, 7, 1, 8, 5, 1]
    assert_equal expected_1, cc_1.sum_over_9
    assert_equal expected_2, cc_2.sum_over_9
  end

  def test_it_can_sum_all_numbers
    cc_1 = CreditCheck.new("4929735477250543")
    cc_2 = CreditCheck.new("5541801923795240")

    assert_equal 80, cc_1.sum
    assert_equal 65, cc_2.sum
  end

  def test_it_can_determine_if_valid
    cc_1 = CreditCheck.new("4929735477250543")
    cc_2 = CreditCheck.new("5541801923795240")

    assert_equal true, cc_1.valid?
    assert_equal false, cc_2.valid?
  end

  def test_it_can_print_correct_response
    cc_1 = CreditCheck.new("4929735477250543")
    cc_2 = CreditCheck.new("5541801923795240")

    assert_equal "The number is valid!", cc_1.response
    assert_equal "The number is invalid!", cc_2.response
  end




end
