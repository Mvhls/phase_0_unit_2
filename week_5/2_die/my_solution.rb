# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: new die w/ argument, length, roll
# Output: the length of labels, and a random index
# Steps:
=begin 

define class die
define method initialize with one argument
set @labels = argument
raise error if argument is empty array

define method sides
return @labels length

define method roll
return random index of @labels array
=end

# 3. Initial Solution

class Die
  def initialize(labels)
  	@labels = labels
  	if @labels.length < 1
  		raise ArgumentError
  	end
  end

  def sides
  	@labels.length
  end

  def roll
  	@labels[rand(@labels.length)]
  end
end



# 4. Refactored Solution
class Die
  def initialize(labels)
  	@labels = labels
  	raise ArgumentError if labels.length < 1
  end

  def sides
  	@labels.length
  end

  def roll
  	@labels[rand(@labels.length)]
  end
end


# 1. DRIVER TESTS GO BELOW THIS LINE
arr = ["hi", "Hello", "Hola", "Guten tag"]
die = Die.new(arr)
die.sides == arr.length
arr.include? die.roll

# 5. Reflection 
=begin 
This challenge was very similar to the die_1, and it took 
less time to complete for that reason. I thought the 
argument was a string turned into an array, but quickly 
realized from the die_spec.rb file that it was already an 
array. After realizing that, everything was the same except 
for the roll method. I was able to use the random number method 
to return a random index number for the array. 
=end