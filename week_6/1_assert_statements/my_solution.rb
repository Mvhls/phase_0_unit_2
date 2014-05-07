# U2.W6: Testing Assert Statements

# I worked on this challenge [by myself, with: ].


# 2. Review the simple assert statement

def assert
  raise "Assertion failed!" unless yield
end

name = "bettysue"
assert { name == "bettysue" }
assert { name != "billybob" }

# 2. Pseudocode what happens when the code above runs
=begin 
method assert is defined
"raise error if block doesn't yield"

sets variable name = "bettysue"
calls method to see if name is betty sue
calls assert method to see if name is bully bob
since name != billy bob, error is raised
=end




# 3. Copy your selected challenge here week 5: 2_die
# code
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

# driver code
arr = ["hi", "Hello", "Hola", "Guten tag"]
die = Die.new(arr)
die.sides == arr.length
arr.include? die.roll

# 4. Convert your driver test code from that challenge into Assert Statements
arr = ["hi", "Hello", "Hola", "Guten tag"]
die = Die.new(arr)
assert {die.sides == arr.length}
assert {arr.include? die.roll}




# 5. Reflection
=begin 
I am assuming that the driver code from our tests is just copied into 
the assertion function. The only difference is that it will raise 
the error instead of coming back false. I'm still a little 
confused about what yield does in this method. From myunderstanding, 
yield means that the block of code will run after the yield statement. 
how exactly the method raises the error, I am not sure. 
=end