# U2.W4: Cipher Challenge


# I worked on this challenge with: Zach Plfederer



# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.



def north_korean_cipher(coded_message)
  input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the ruby docs.
  decoded_sentence = []
  cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
            "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
            "g" => "c", 
            "h" => "d", 
            "i" => "e", 
            "j" => "f",
            "k" => "g",
            "l" => "h",
            "m" => "i",
            "n" => "j",
            "o" => "k",
            "p" => "l",
            "q" => "m",
            "r" => "n",
            "s" => "o",
            "t" => "p",
            "u" => "q",
            "v" => "r",
            "w" => "s",
            "x" => "t",
            "y" => "u",
            "z" => "v",
            "a" => "w",
            "b" => "x",
            "c" => "y",
            "d" => "z"}
            
  input.each do |x| # What is #each doing here?
    found_match = false  # Why would this be assigned to false from the outset? What happens when it's true?
    cipher.each_key do |y| # What is #each_key doing here?
      if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really?
        puts "I am comparing x and y. X is #{x} and Y is #{y}."
        decoded_sentence << cipher[y]
        found_match = true
        break  # Why is it breaking here?
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing?
        decoded_sentence << " "
        found_match = true
        break
      elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do?
        decoded_sentence << x
        found_match = true
        break
      end 
    end
    if not found_match  # What is this looking for?
      decoded_sentence << x
    end
  end
  decoded_sentence = decoded_sentence.join("")
 
  if decoded_sentence.match(/\d+/) #What is this matching? Look at Rubular for help. 
    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } #He's been known to exaggerate...
  end  
  return decoded_sentence # What is this returning?        
end

# Your Refactored Solution
def north_korean_cipher(coded_message)

# Create array to store our result
  decoded_sentence = []           
# Create array of the alphabet to build our cipher
  alphabet = ("a".."z").to_a
# Create empty hash to serve as our cipher
  cipher = {}

# Populate cipher hash with letters of the alphabet, offset by four (i.e 'e' => 'a')
  (0..25).each { |x| cipher[(alphabet[x - 22])] = alphabet[x] }

# Create an array of individual characters from our argument, and run the following block of code on each character (a variable name of 'input' is given to each character)
  coded_message.downcase.split("").each do |input|
# Create found_match variable, set to false
    found_match = false
# For each cipher key, check against the input variable
    cipher.each_key do |key| 

# For alphabetical characters, use the input to access the cipher value whose key is equal to the input
      if input == key
        decoded_sentence.push cipher[key]
        found_match = true
        break  
# Deciphers the symbols in array into spaces
      elsif ["@", "#", "$", "%", "^", "&", "*"].any? {|x| x == input} 
        decoded_sentence.push " "
        found_match = true
        break
# Pushes numbers into decoded sentence as is
      elsif (0..9).to_a.include?(input)  
        decoded_sentence.push input
        found_match = true
        break
      end
    end
# Pushes symbols from input into decoded sentence if found_match is false    
      decoded_sentence.push input if not found_match 
end
# Turns array into one string
  decoded_sentence = decoded_sentence.join("")  
# Divides multi digit numbers 
  decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } if decoded_sentence.match(/\d+/)  
  
  return decoded_sentence
end
# Driver Code:
p north_korean_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver code and should print true
# Find out what Kim Jong Un is saying below and turn it into driver code as well. Driver Code statements should always return "true"
p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.")
p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!")
p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.")
p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!")
p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?")

# Reflection
 
