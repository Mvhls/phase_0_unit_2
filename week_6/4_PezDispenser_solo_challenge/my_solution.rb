# U2.W6: PezDispenser Class from User Stories


# I worked on this challenge [by myself, with: ].

# 1. Review the following user stories:
# - As a pez user, I'd like to be able to "create" a new pez dispenser with a group of flavors that 
#      represent pez so it's easy to start with a full pez dispenser.
# - As a pez user, I'd like to be able to easily count the number of pez remaining in a dispenser 
#      so I can know how many are left.
# - As a pez user, I'd like to be able to take a pez from the dispenser so I can eat it.
# - As a pez user, I'd like to be able to add a pez to the dispenser so I can save a flavor for later.
# - As a pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order 
#      of the flavors coming up.


# 2. Pseudocode
=begin 
define a class called PezDispenser
define a method called initialize
assign instance variables:
  @flavors = flavors

create a class method called pez_count
  pez_count has no arguments
  returns the length of the @flavors array

define a method called see_all_pez
see_all_pe has no arguments
puts each index in @flavors array

define a method called add_pez
add_pez has one argument called flavor
assign instance variable @flavor = flavor
pushes @falvor to the end of @flavors array

define a method called get_pez
pop @flavors
=end


# 3. Initial Solution

class PezDispenser
	def initialize(flavors)
		@flavors = flavors
	end

	def pez_count
		return @flavors.length
	end

	def see_all_pez
		@flavors.reverse.each {|pez| pez}
	end

	def add_pez(flavor)
		@flavor = flavor
		@flavors.push(@flavor)
	end

	def get_pez
		return @flavors.pop
	end
end
 


# 4. Refactored Solution
class PezDispenser
	def initialize(flavors)
		@flavors = flavors
	end

	def pez_count
		@flavors.length
	end

	def see_all_pez
		@flavors.sort
	end

	def add_pez(flavor)
		@flavors.unshift(flavor)
	end

	def get_pez
		@flavors.shift
	end
end

# 1. DRIVER TESTS GO BELOW THIS LINE
def assert
  raise "Assertion failed!" unless yield
end
flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"  
puts "Here's a look inside the dispenser:"  
puts super_mario.see_all_pez 
puts "Adding a purple pez."
super_mario.add_pez("purple")   # mmmmm, purple flavor
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"




# 5. Reflection 
=begin 
This challenge was very straight foward. I dod not have many 
problems because I was already used to classes in ruby. This was 
a good review of everything I learned in ruby so far.
=end