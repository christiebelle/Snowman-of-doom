require("minitest/autorun")
require("minitest/rg")

require_relative("../game.rb")
require_relative("../hiddenword.rb")
require_relative("../player.rb")

class GameTest < MiniTest::Test

  def setup
    @new_game = Game.new(2, "The Avengers")
    @playa1 = Player.new("Player 1", 6)
    @playa2 = Player.new("Player 2", 6)
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
