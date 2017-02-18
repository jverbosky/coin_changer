require "minitest/autorun"
require_relative "coin_changer.rb"

class TestCoinChanger < Minitest::Test

	def test_1_output_for_11_cents
		amount = 11
		results = make_change(amount)
		assert_equal({:dime => 1, :penny => 1}, results)
	end

  def test_2_output_for_31_cents
    amount = 31
    results = make_change(amount)
    assert_equal({:quarter => 1, :nickel => 1, :penny => 1}, results)
  end

  def test_3_output_for_11_cents
    amount = 93
    results = make_change(amount)
    assert_equal({:quarter => 3, :dime => 1, :nickel => 1, :penny => 3}, results)
  end

end