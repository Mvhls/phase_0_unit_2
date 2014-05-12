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
        @north = "north"
        @south = "south"
        @east = "east"
        @west = "west"
        @direction = @north
        @time = 0
        @log.push(@direction)
        puts "The #{@model} is facing #{@direction} and not moving"
	end
	def speed(mph)
		@car_speed = mph
		puts "The #{@model} is going #{@car_speed} miles per hour."
		@log.push(@car_speed)
	end
	def turn(direction)
		@direction = @north if direction == "left" && @direction == @east || direction == "right" && @direction == @west
		@direction = @west if direction == "left" && @direction == @north || direction == "right" && @direction == @south
		@direction = @south if direction == "left" && @direction == @west || direction == "right" && @direction == @east
		@direction = @east if direction == "left" && @direction == @south || direction == "right" && @direction == @north
		puts "The #{@model} turned #{direction} and is heading #{@direction}"
		@log.push(direction)
		@log.push(@direction)
	end
	def time(minutes)
		@distance = (@car_speed * minutes / 60).to_f
		@time += minutes
		puts "The #{@model} traveled #{@distance} miles #{@direction} in #{minutes} minutes."
	end
	def log
		puts "Driving History:"
		@log.each do |x|
			if x.is_a? Float
				puts "The #{@model} traveled " + @log[x].to_s + " miles."
			elsif x.is_a? Integer 
				puts "The #{@model} is traveilng at " + @log[x].to_s + " miles per hour."
			elsif x == @north || @south || @east || @west
				puts "The #{@model} is heading " + @log[x] + "."
			elsif x == "left" || "right" 
				puts "The #{@model} turned " + @log[x] + "."
			end
		end
	end

end

# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 