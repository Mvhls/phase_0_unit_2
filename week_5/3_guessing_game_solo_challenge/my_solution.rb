# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: number
# Output: lower, higer or correct
# Steps:
=begin
create a class called GuessingGame
define a method called initialize with one argument
set class variable answer = argument

define a method called guess with one argument
set class variable guess = argument
return :high if guess < answer
return :low if guess > answer
return :correct if guess = answer

define method called solved?
set @guess == @answer
=end

# 3. Initial Solution

class GuessingGame
	def initialize(answer)
		@answer = answer
	end
	def guess(guess)
		@guess = guess
		if @guess > @answer
			return :high 
		end
		if @guess < @answer
			return :low 
		end
		if @guess == @answer
			return :correct 
		end
	end
	def solved?
		@guess == @answer
	end
end

# 4. Refactored Solution
class GuessingGame
	def initialize(answer)
		@answer = answer
	end
	def guess(guess)
		@guess = guess
		return :high if @guess > @answer
		return :low if @guess < @answer
		return :correct if @guess == @answer
	end
	def solved?
		@guess == @answer
	end
end
# 1. DRIVER TESTS GO BELOW THIS LINE
game = GuessingGame.new(10)
game.solved? == false
game.guess(5) == :low
game.guess(12) == :high
game.solved? == false
game.guess(10) == :correct
game.solved? == true
# 5. Reflection 
=begin 
This problem seemed easy, but was tough at the end. I 
understood what to do for the guess method, but was somewhat 
confused about the solved? part. I originally wanted to create 
a class variable @solved,  but it would not pass the rspec 
tests. I found out that I needed to define a method solved? 
and set @guess == @answer. 
=end