# U2.W4: Numbers to Commas Solo Challenge

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  


# 1. Pseudocode
=begin
creat a function called seperate_comma with one argument
turn input into string
if integer is less than 4
	return input
if the input length is greater than 3
	shift last 3 digits into an array
	shift comma into array
	shift rest of integers into array
	return joined array
if the input length is greater than 6
	shift last 3 digits into an array
	shift comma into array
	shift next three into array
	shift rest of integers into array
	return joined array
=end
# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 2. Initial Solution
def separate_comma(x)
	number = x.to_s.split("")
	if number.length < 4
		return number.join
	elsif number.length < 7
		one = number.pop
		two = number.pop
		three = number.pop
		number.push(",")
		number.push(three)
		number.push(two)
		number.push(one)
		return number.join
	elsif number.length < 10
		one = number.pop
		two = number.pop
		three = number.pop
		four = number.pop
		five = number.pop
		six = number.pop
		number.push(",")
		number.push(six)
		number.push(five)
		number.push(four)
		number.push(",")
		number.push(three)
		number.push(two)
		number.push(one)
		return number.join
	end
end



# 3. Refactored Solution
def separate_comma(x)
	number = x.to_s.split("")
	if number.length < 4
		return number.join
	elsif number.length < 7
		number.insert(number.length-3, ",")
		return number.join
	elsif number.length < 10
		number.insert(number.length-3, ",")
		number.insert(number.length-7, ",")
		return number.join
	end
end


# 4. Reflection 
=begin
This was definitely a brain teaser!  The first problem I 
was facing was figuring out where to place commas. Numbers 
of length 4 through 6 only needed one comma, so the index 
counting from the front  was not always the same. I then 
realized that counting backwards, the comma would always be 
before the last three digits. After that, passing the test 
was pretty  simple, but my code had a dozen push and pop 
methods which didn't look pretty.  I was puzzled on how to 
approach this problem in the D.R.Y.est way, and then I 
remembered the ruby ".insert" method which places an object 
into an array without disassembling it. I then refactored 
my code to use the insert method and reduced the amount of 
lines in my code by more than half! That looks pretty D.R.Y 
to me! Overall, this was a fun challenge. I enjoy math and 
logic questions because they always give me that feeling of 
accomplishment. 
=end