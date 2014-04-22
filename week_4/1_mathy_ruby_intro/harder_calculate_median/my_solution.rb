# U2.W4: SOLO CHALLENGE Calculate the Median!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input? -the array
# What is the output? (i.e. What should the code return?)
#-the median of the array
# What are the steps needed to solve the problem?
=begin 
define method median with one argument
  if array is odd
  	set variable sort = sorted array
  	return the middle index of sort array
  if array is even
  	set variable sort = sorted array
  	set variable middle_1 = first middle index
  	set variable middle_2 = second middle index
  	return the average of two middle numbers
=end


# 2. Initial Solution
def median(x)
	if x.length%2 == 0
		sort = x.sort
		middle_1 = sort[(x.length-2)/2].to_f
		middle_2 = sort[x.length/2].to_f
		return (middle_1 + middle_2)/2
	else
		sort = x.sort
		return sort[(x.length-1)/2]
	end
end
# 3. Refactored Solution
def median(x)
	if x.length%2 == 0
		return (x.sort[(x.length/2)-1].to_f + x.sort[x.length/2].to_f)/2
	else
		return x.sort[(x.length-1)/2]
	end
end


# 4. Reflection 
=begin
I spent the most time debugging my program. This was very similar 
to the week 3 group project we completed. I was worried at first 
about even arrays with strings, but I realized that you cannot 
divide strings in the first place, and the tests did not involve 
any. When I was doing the group project, I did the pseudo code, so 
I spent most of my time writing the code. I  did this without looking 
at my previous code in order to understand it better, but I still 
remembered most of it, and it did not take that long.
=end