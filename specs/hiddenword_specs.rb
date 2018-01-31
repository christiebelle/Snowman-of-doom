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

  def test_redaction
    assert_equal("*** ********", @word.redaction)
  end

end
