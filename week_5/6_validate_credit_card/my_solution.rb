# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:
# Output:
# Steps:


# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits
class CreditCard
	def initialize(number)
		@number = number
	end

	def check_card
		valid = false
		arr = @number.split("")
		arr.each {|index| arr[index] = arr[index]*2 if index%2 != 0}
		valid = true if arr.inject{|sum,index| sum + index} % 10 == 0
		
	end

end



# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 
