require "minitest/autorun"

require_relative "CoinChanger2.rb"

class TestCoinChanger2 < MiniTest::Test
    
    def test_change_due_of_1
        assert_equal({"quarters" => 0, "dimes" => 0, "nickles" => 0, "pennies" => 1}, change(1))
    end
    def test_change_due_of_3
        assert_equal({"quarters" => 0, "dimes" => 0, "nickles" => 0, "pennies" => 3}, change(3))
    end  
    def test_change_due_of_5
        assert_equal({"quarters" => 0, "dimes" => 0, "nickles" => 1, "pennies" => 0}, change(5))
    end
    def test_change_due_of_6
        assert_equal({"quarters" => 0, "dimes" => 0, "nickles" => 1, "pennies" => 1}, change(6))
    end
   def test_change_due_of_10
        assert_equal({"quarters" => 0, "dimes" => 1, "nickles" => 0, "pennies" => 0}, change(10))
    end 
end