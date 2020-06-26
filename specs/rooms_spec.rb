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

        @guest1 = Guests.new("Jess", 15)
        @guest2 = Guests.new("Robert", 50)
        @guest3 = Guests.new("Louis", 30)

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

end