class HiddenWord

  def initialize(word)
    @word = word
    @hiddenword = ""
  end

  def returns_word
    return @word
  end

  def word_to_characters()
    @word = @word.downcase().split(//)
  end

  def hide_word
    word_to_characters()
    for letters in @word
      if letters == " "
        @hiddenword += " "
      else
        @hiddenword += "*"
      end
    end
    return @hiddenword
  end

  def display_correct_letters(guess)
    word_to_characters()
    for letters in @word
      if guess == letters
        @hiddenword += guess
      elsif
        letters == " "
        @hiddenword += " "
      else
        @hiddenword += "*"
      end
    end
    return @hiddenword
  end

  def true_or_false(guess)
    word_to_characters()
    for letters in @word
      if guess == letters
        return true
      else
        return false
      end
    end
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
