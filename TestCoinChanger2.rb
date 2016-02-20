require "minitest/autorun"

require_relative "CoinChanger2.rb"

class TestCoinChanger2 < MiniTest::Test
    
    def test_change_due_of_1
        assert_equal({"quarters" => 0, "dimes" => 0, "nickles" => 0, "pennies" => 1}, change(1))
    end
      
end