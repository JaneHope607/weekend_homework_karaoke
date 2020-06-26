require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../rooms")

class RoomsTest < MiniTest::Test


    def setup
        @room1 = Room.new("Superstar", 15, 5)
        @room2 = Room.new("Queen", 20, 10)
        @room3 = Room.new("Rockstar", 25, 15)

    end



end