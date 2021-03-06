require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../songs")

class SongsTest < MiniTest::Test

    def setup
        @song1 = Songs.new("Wonderwall")
        @song2 = Songs.new("Fernando")
        @song3 = Songs.new("Dancing Queen")
    end

    def test_song_has_name
        assert_equal("Fernando", @song2.track_name)
    end


end