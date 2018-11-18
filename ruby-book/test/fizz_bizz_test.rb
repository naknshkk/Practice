#puts "Hello,World"


require 'minitest/autorun'
require '../lib/fizz_bizz'

class FizzBuzzTest < Minitest::Test
  def test_fizz_buzz
    assert_equal '1', fizz_bizz(1)
    assert_equal '2', fizz_bizz(2)
    assert_equal 'Fizz', fizz_bizz(3)
    assert_equal '4', fizz_bizz(4)
    assert_equal 'Bizz', fizz_bizz(5)
    assert_equal 'Fizz', fizz_bizz(6)
    assert_equal 'FizzBizz', fizz_bizz(15)
  end
end

























