# U2.W5: Die Class 1: Numeric


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: new die w/ sides, die sides, random roll
# Output: new die, sides of the die, random roll
# Steps:
=begin
define a class :Die
define a method initialize with one argument sides
create an instance variable @sides = sides
set an ArgumentError if sides is less than one

define a method called sides
return sides

define a method called roll
generate a random integer based on sides
=end


# 3. Initial Solution

class Die
    def initialize(sides)
        @sides = sides
		if sides < 1
			raise ArgumentError
		end
	end

	def sides
		@sides
	end

	def roll
    (rand(@sides)+1)
	end
end


# 4. Refactored Solution
class Die
    def initialize(sides)
        @sides = sides
		raise ArgumentError if sides < 1
	end

	def sides
		@sides
	end

	def roll
    (rand(@sides)+1)
	end
end





# 1. DRIVER TESTS GO BELOW THIS LINE
die = die.new(6)
die.sides == 6
(1..6).include? die.roll






# 5. Reflection 
=begin 
I was familiar with this type of program from Chris Pine's 
book; Learn to Code, but I attempted to solve the problem 
without looking at the solution. I haven't used classes in 
a while either, so most of my time was spent on relearning 
the syntax. After I was familiar with everything, the actual 
program was easy for me to write, and I understand everything 
except for the ArgumentError. I know what it is there for, but 
errors themselves I haven't used in my code before. 
=end