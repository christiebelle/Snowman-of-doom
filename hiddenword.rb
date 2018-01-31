class HiddenWord

  def initialize(word)
    @word = word
    @hiddenword = []
  end

  def returns_word
    return @word
  end

def word_to_characters()
  @hiddenword = @word.downcase().split(//)
  p @hiddenword
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
