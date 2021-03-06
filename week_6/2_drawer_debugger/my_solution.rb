# U2.W6: Drawer Debugger


# I worked on this challenge [by myself, with: ].


# 2. Original Code

class Drawer

  attr_reader :contents

# Are there any more methods needed in this class?

  def initialize
    @contents = []
    @open = true
  end

  def open
    @open = true
  end

  def close
    @open = false
  end 

  def add_item(item)
    @contents << item
    puts "added #{item} to the drawer"
  end

  def remove_item(item = @contents.pop) #what is `#pop` doing?
    @contents.delete(item)
  end

  def dump  # what should this method return?
    @contents =[]
    puts "Your drawer is empty."
  end

  def view_contents
    puts "The drawer contains:"
    @contents.each {|silverware| puts "- " + silverware.type }
  end
end

class Silverware
  attr_reader :type

# Are there any more methods needed in this class?

  def initialize(type, clean = true)
    @type = type
    @clean = clean
  end

  def eat
    puts "eating with the #{type}"
    @clean = false
  end
  
  def clean_silverware
    @clean = true
  end
  
end

knife1 = Silverware.new("knife")

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1) 
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork")) 
silverware_drawer.view_contents

silverware_drawer.remove_item
silverware_drawer.view_contents
sharp_knife = Silverware.new("sharp_knife")


silverware_drawer.add_item(sharp_knife)

silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean_silverware 

silverware_drawer.view_contents
silverware_drawer.dump
silverware_drawer.view_contents #What should this return?
fork = Silverware.new("fork")
silverware_drawer.add_item(fork) 
silverware_drawer.view_contents


removed_fork = silverware_drawer.remove_item(fork) #add some puts statements to help you trace through the code

removed_fork.eat

#BONUS SECTION
# puts fork.clean

# DRIVER TESTS GO BELOW THIS LINE
def assert
  raise "Assertion failed!" unless yield
end
assert {silverware_drawer.contents == []}

plastic_knife = Silverware.new("plastic_knife")
silverware_drawer.add_item(plastic_knife)
assert {silverware_drawer.contents == [plastic_knife]}





# 5. Reflection 