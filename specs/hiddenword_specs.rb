require("minitest/autorun")
require("minitest/rg")

require_relative("../hiddenword.rb")

class HiddenWordTest < MiniTest::Test

  def setup
    @word = HiddenWord.new("The Avengers")
  end

  def test_returns_word
    assert_equal("The Avengers", @word.returns_word)
  end

def test_returns_word_characters
  @word = HiddenWord.new("The Post")
  assert_equal(["t","h","e", " ", "p","o","s","t"], @word.word_to_characters())
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
