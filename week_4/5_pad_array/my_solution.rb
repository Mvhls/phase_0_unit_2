# U2.W4: Pad an Array

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode
=begin
create a class called array
define a method called pad with two arguments(pad and filler)
if the filler isn't noted, place nill as filler
if the pad value is <= the array length, do not add padding
if the pad value is greater than the array length
	push fillers into the arraay that is the difference between pad and array 

define a method called pad! with two arguments(pad and filler)
this method is the same as above but uses destructive methods of push
=end
# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 2. Initial Solution
class Array 
	def pad!(padding, filler=nil)
		if self.length >= padding
			return self
		end
		if self.length <= padding
			size = padding - self.length
			size.times {self << filler}
			return self
		end
	end
	
	def pad(padding, filler=nil)
		if self.length >= padding
			return self
		end
		if self.length <= padding
			arr = self
			size = padding - arr.length
			size.times {arr << filler}
			return arr
		end
	end
end



# 3. Refactored Solution



# 4. Reflection 