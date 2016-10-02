#### WORD GUESSING GAME PSEUDOCODE ####
# define a class WordGame
# make a guess count allowed attribute and a gameover attribute available outside of class 
#   in driver code. 

# have an initialize method that has an attribute that stores
#   player guesses in a data structure(split up yet?), an attribute that has a default value for the 
#   count of guesses allowed, and a gameover attribute that is set to false

# A method where the Secretword should be split into letters and stored. the index of the split up word 
# should be set equal to the guess count allowed attribute.

# create a method for player's guess word
# add a -1 to the guess count allowed attribute UNLESS the word is equal to one of the previously stored guesses
# If the guess word is equal to the secret word, the gameover attribute will be set to true.
#    If it is not equal to the secret word, it will still say false.
# 
# 
#
#### USER INTERFACE ####
# welcome the user to the wordgame, have it initialize a new instance of
#    the WordGame class.
# while the gameover attribute is not true, have it ask the person what the secret word is. 
#    Accept the secret word, and apply the secretword method to it.
#
# Ask the 2nd player what the guess word is and apply the guess method to it.
# while the gamover attribute is false, see if there are matching letters between the guessword and
#    secretword and print them out with the rest of the length of the secret word blocked out with ----'s 
#    And if no letters match, have it tell the user that they need to step up their game. 
# 	if gameover attribute is not false, have it print the secret word and also say, "nice you got it!"

class WordGame
	attr_accessor :guess_count_allowed, :gameover

	def initialize
		@player_guess_word = []
		@guess_count_allowed = guess_count_allowed
		@gameover = false
	end

	def secret(secretword)
		@secretword = secretword
		secretword.chars

	end

	def guess(guess_word)
		@guess_word = guessword 
		secretword.length = guess_count_allowed

		if guessword == secretword
			@gameover = true
	end

end

secrets = []
guesses = []

### USER INTERFACE ###
puts "Welcome to the word guessing game!"
game = WordGame.new
while !game.gameover
	puts "Type the secret word you want to use!"
	secretword = gets.chomp
	p game.secret(secretword)
	secrets << secretword
	puts "Player2, what do you think the secret word is?"
	guessword = gets.chomp
	p game.guess(guess_word)
	guesses << guessword

	if  
	end 
end

puts "you won in #{game.guess_count_allowed} guesses!"


