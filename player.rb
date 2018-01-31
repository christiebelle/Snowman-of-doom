class Player

  attr_accessor :name, :lives

  def initialize(name, lives)
    @name = name
    @lives = lives
  end

  def player_details
    return "#{@name} has #{@lives} lives"
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
