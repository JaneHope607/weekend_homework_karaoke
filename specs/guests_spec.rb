require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../guests")

class GuestsTest < MiniTest::Test

    def setup
        @guest1
        @guest2
    end



end