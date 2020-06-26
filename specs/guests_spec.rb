require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../guests")
require_relative("../rooms")

class GuestsTest < MiniTest::Test

    def setup
        @room1 = Rooms.new("Superstar", 15, 5, @song_list, @people)
        @room2 = Rooms.new("Queen", 20, 10, @song_list, @people)

        @guest1 = Guests.new("Jess", 15)
        @guest2 = Guests.new("Robert", 50)
        @guest3 = Guests.new("Louis", 30)
    end

    def test_guest_has_name
        assert_equal("Jess", @guest1.name)
    end

    def test_guest_has_money
        assert_equal(50, @guest2.money)
    end

    def test_sufficient_funds__true
        assert_equal(true, @guest2.sufficient_funds(@room1))
    end

    def test_sufficient_funds__false
        assert_equal(false, @guest1.sufficient_funds(@room2))
    end

    def test_pay_for_room__sufficient_funds
        @guest3.pay_for_room(@room2)
        assert_equal(10, @guest3.money())
    end

    def test_cannot_pay_for_room
        @guest1.pay_for_room(@room2)
        assert_equal(15, @guest1.money())
    end

end