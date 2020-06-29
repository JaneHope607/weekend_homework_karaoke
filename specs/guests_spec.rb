require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../guests")
require_relative("../rooms")
require_relative("../songs")

class GuestsTest < MiniTest::Test

    def setup
        @guest1 = Guests.new("Jess", 15, "Wonderwall")
        @guest2 = Guests.new("Robert", 50, "Hallelujah")
        @guest3 = Guests.new("Louis", 30, "Jump")

        @song1 = Songs.new("Wonderwall")
        @song2 = Songs.new("Fernando")
        @song3 = Songs.new("Dancing Queen")

        @room1 = Rooms.new("Superstar", 15, 5, @song_list, @people)
        @room2 = Rooms.new("Queen", 20, 10, @song_list, @people)
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

    # def test_favourite_song_present__false
    #     assert_equal("Aw no!", @guest2.favourite_song_present(@room1))
    # end

    # def test_favourite_song_present__true
    #     @room1.add_songs(@song1)
    #     assert_equal("Woo this is my favourite song!", @guest1.favourite_song_present(@room1))
    # end

end