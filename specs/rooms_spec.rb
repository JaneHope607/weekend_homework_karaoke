require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../rooms")
require_relative("../guests")

class RoomsTest < MiniTest::Test


    def setup
        @room1 = Rooms.new("Superstar", 15, 2, @song_list, @people)
        @room2 = Rooms.new("Queen", 20, 3, @song_list, @people)
        @room3 = Rooms.new("Rockstar", 25, 5, @song_list, @people)

        @guest1 = Guests.new("Jess", 15)
        @guest2 = Guests.new("Robert", 50)
        @guest3 = Guests.new("Louis", 30)

        @song1 = Songs.new("Wonderwall")
        @song2 = Songs.new("Fernando")
        @song3 = Songs.new("Dancing Queen")

    end

    def test test_add_more_songs
        @room1.add_more_songs(@song1)
        result = ["Wonderwall"]
        assert_equal(result, @room1.song_list)
    end

    # def test_check_in_guests

    # end


end