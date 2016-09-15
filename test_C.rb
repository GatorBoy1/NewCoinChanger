require "minitest/autorun"
require_relative "func_C.rb"
class TestCoinChanger< Minitest::Test 
    
    def test_0_returns_empty_hash
        cents_received = 0
        assert_equal({dollar_pc:0, fifty_cnt_pc:0, quarter:0, dime:0, nickle:0, penny:0}, coin_changer(cents_received))
    end

    def test_returns_8_dollars_and_fifty_cents
        cents_received = 850
        assert_equal({dollar_pc:8, fifty_cnt_pc:1, quarter:0, dime:0, nickle:0, penny:0},coin_changer(cents_received))
    end


end