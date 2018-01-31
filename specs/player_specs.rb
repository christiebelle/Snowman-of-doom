require("minitest/autorun")
require("minitest/rg")

require_relative("../player.rb")

class PlayerTest < MiniTest::Test

  def setup
    @playa = Player.new("Player 1", 6)
  end

  def test_player_details
    assert_equal("Player 1 has 6 lives", @playa.player_details)
  end


end



# MVP
#
# A Game will have properties for a Player object,
# a HiddenWord object, and an array of guessed_letters

# A Player will have a name and number of lives

# A HiddenWord will be initialised with a word string,
# but will only display letters which have been correctly
# guessed, replacing the rest with the * character

# The HiddenWord should also be able to report true or
# false if a letter appears in the word
