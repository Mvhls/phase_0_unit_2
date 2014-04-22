# U2.W4: Add it up!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?
=begin 
create method total with one argument
create variable sum = 0
each index in array
add to sum
return sum

create method sentence_maker with one argument
join x into sentence
add sentence to "."
capitalize first letter in sentence
return sentence
=end

# 2. Initial Solution
def total(x)
    sum = 0
	x.each do |i|
		sum += i
	end
	return sum
end

def sentence_maker(x)
	sentence = x.join(" ")
	sentence = sentence + "."
	sentence = sentence.capitalize
	return sentence
end
# 3. Refactored Solution
def total(x)
    sum = 0
	x.each do |i|
		sum += i
	end
	return sum
end

def sentence_maker(x)
	return (x.join(" ") + ".").capitalize
end


# 4. Reflection 
=begin
This was my first introduction to rspec, and was I confused! 
I tried watching the video on how it worked, and it seemed way
over my head. Luckily for this challenge, the tests are already 
provided. I enjoy having tests when writing my code. It is a 
perfect guideline for writing pseudo code, transferring your 
pseudo code into code, refactoring and pretty much every step 
of the process. It took me a while to understand the rspec file 
in the command line, but I realized the similarities of passing 
the tests in javascript from the previous week. I am also learning 
more about pseudo code also. I always want to write code after each 
test, but I have restrained myself from doing so until I write it 
down for the whole program. Is this a good way to do it, or should
I be writing pseudo code and then trying to pass each individual 
test before moving on? 

The tests themselves gave me somewhat of a problem, but 
I was able to search for a way to accomplish them 
easily. I originally wanted to use the for loop, but ran into 
problems. I was reading about using the ".each" method and was able 
to pass the first program using that. The sentence maker program was 
easy to pass after I researched about the ".join" method. After that, 
I already understood how to concatenate strings and capitalize the first 
letter from previous experiences with ruby. This exercise was a good 
review for my ruby skills, and an overall good introduction to rspec. 
I am more worried about making my own tests in rspec, but I'm sure 
I will be able to understand it the more I use it.
=end