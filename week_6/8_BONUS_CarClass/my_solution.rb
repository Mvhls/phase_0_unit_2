# U2.W6: Create a Car Class from User Stories


# I worked on this challenge [by myself, with: ].


# 2. Pseudocode
=begin 
create a class called Car
define method initialize
  it has two arguments called model and color
    model will define what model the car is
    color will define the color of the car
  create instance variables for each argument
  create an array called @log that tracks the directions
define a method called speed
	it has one argument called speed
	  it will set the speed of the car
	if the argument is an integer
		set the speed of the car to the argument
	else it raises error
define a method called turn with one argument
    if the argument is left
    	turn left
    elsif is right turns right
   	else it raises error
create a method called time with one argument
  it will pass time in seconds 


=end


# 3. Initial Solution
class Car
	def initialize(model, color)
		@model = model
		@color = color
		@log = []
	end
	def speed(mph)
		@car_speed = mph
	end
end





# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 