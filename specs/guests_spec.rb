require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../guests")

class GuestsTest < MiniTest::Test

    def setup
        @guest1 = Guests.new("Jess", 15)
        @guest2 = Guests.new("Robert", 50)
        @guest3 = Guests.new("Louis", 30)
    end



end