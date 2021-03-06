require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../rooms")
require_relative("../guests")
require_relative("../songs")

class RoomsTest < MiniTest::Test

    def setup
        @room1 = Rooms.new("Superstar", 15, 2, @song_list, @guests)
        @room2 = Rooms.new("Queen", 20, 3, @song_list, @guests)

        @guest1 = Guests.new("Jess", 15, "Wonderwall")
        @guest2 = Guests.new("Robert", 50, "Hallelujah")
        @guest3 = Guests.new("Louis", 30, "Jump")

        @song1 = Songs.new("Wonderwall")
        @song2 = Songs.new("Fernando")
        @song3 = Songs.new("Dancing Queen")

    end

    def test_count_guests
        assert_equal(0, @room2.count_guests())
    end

    def test_count_songs
        @room1.add_songs(@song2)
        assert_equal(1, @room1.count_songs())
    end

    def test_add_songs
        @room1.add_songs(@song1.track_name)
        result = ["Wonderwall"]
        assert_equal(result, @room1.song_list)
    end

    def test_check_in_guests
        @room1.check_in_guests(@guest2, @room1)
        @room1.check_in_guests(@guest3, @room1)
        assert_equal(2, @room1.count_guests())
    end

    def test_check_in_guest__insufficient_funds
        @room2.check_in_guests(@guest1, @room2)
        assert_equal(0, @room2.count_guests())
    end

    def test_remove_guests
        @room1.check_in_guests(@guest2, @room1)
        @room1.check_in_guests(@guest3, @room1)
        @room1.remove_guests(@guest3)
        assert_equal(1, @room1.count_guests())
    end

    def test_has_capacity__true
        assert_equal(true, @room1.has_capacity)
    end

    def test_has_capacity__false
        @room1.check_in_guests(@guest2, @room1)
        @room1.check_in_guests(@guest3, @room1)
        assert_equal(false, @room1.has_capacity)
    end
    
    def test_song_in_playlist__false
        assert_equal(false, @room1.song_in_playlist(@song1))
    end

    def test_song_in_playlist__true
        @room1.add_songs(@song2)
        assert_equal(true, @room1.song_in_playlist(@song2))
    end

end