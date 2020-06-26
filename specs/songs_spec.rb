require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../songs")

class SongsTest < MiniTest::Test


    def setup
        @song1 = Song.new()
        @song2 = Song.new()
        @song3 = Song/new()
    end



end