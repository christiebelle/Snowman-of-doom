require("minitest/autorun")
require("minitest/rg")

require_relative("../hiddenword.rb")

class HiddenWordTest < MiniTest::Test

  def setup
    @word = HiddenWord.new("The Post")
  end

  def test_returns_word
    assert_equal("The Post", @word.returns_word)
  end

  def test_returns_word_characters
    @word = HiddenWord.new("The Post")
    assert_equal(["t","h","e", " ", "p","o","s","t"], @word.word_to_characters())
  end

  def test_hide_word
    assert_equal("*** ****", @word.hide_word)
  end

  def test_display_correct_letters
    assert_equal("t** ***t", @word.display_correct_letters("t"))
  end

  def test_true_or_false
    assert_equal(true, @word.true_or_false("t"))
    # assert_equal(true, @word.true_or_false("t"))
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
