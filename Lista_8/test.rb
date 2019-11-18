require 'testy'
require "test/unit"

class Testtostring < Test::Unit::TestCase
  def test_1
    x=Obliczenia.new(9)
    assert_equal([[3, 2]],x.rozklad())
    # assert_equal("((4/2)+0)",y.to_s)
    #assert_equal("(4-2)",z.to_s)
  end
end