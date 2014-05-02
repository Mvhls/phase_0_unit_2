# U2.W5: Bakery Challenge GPS

# I worked on this challenge with: Vivek M George

# Our Refactored Solution
def bakery_num(num_of_people, fav_food) 
  my_list = {"pie" => 8, "cake" => 6, "cookie" => 1} 
  pie_qty = 0
  cake_qty = 0
  cookie_qty = 0
  
  raise ArgumentError.new("You can't make that food") unless my_list.has_key?(fav_food)

  fav_food_qty = my_list[fav_food] 
  if num_of_people % fav_food_qty == 0 
    num_of_food = num_of_people / fav_food_qty
    return "You need to make #{num_of_food} #{fav_food}(s)."
  else 
    while num_of_people > 0	
        pie_qty = num_of_people / my_list["pie"] unless fav_food == "cake"
        num_of_people = num_of_people % my_list["pie"] unless fav_food == "cake"
        cake_qty = num_of_people / my_list["cake"]
        num_of_people = num_of_people % my_list["cake"]
        cookie_qty = num_of_people
        num_of_people = 0
      end
    end
      return "You need to make #{pie_qty} pie(s), #{cake_qty} cake(s), and #{cookie_qty} cookie(s)."
end

#DRIVER CODE-- DO NOT MODIFY ANYTHING BELOW THIS LINE (except in the section at the bottom)
# These are the tests to ensure it's working. 
# These should all print true if the method is working properly.
p bakery_num(24, "cake") == "You need to make 4 cake(s)."
p bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."
p bakery_num(24, "cookie") == "You need to make 24 cookie(s)."
p bakery_num(4, "pie") == "You need to make 0 pie(s), 0 cake(s), and 4 cookie(s)."
p bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)."
p bakery_num(41, "cake") == "You need to make 0 pie(s), 6 cake(s), and 5 cookie(s)." # WHAAAAAT? I thought I said I wanted cake!
p bakery_num(3, "apples")

#  Reflection 
=begin 
This challenge was very difficult for me. The hardest part was 
figuring out what the code's purpose was. If I knew what the integers 
in the my_list hash meant, or that this was a program to make the exact 
amount of food for a certain amount of people, this program would of been 
easier to refactor. Because I didn't know what this program did, 
I wasn't sure what was or wasn't important. That was the biggest difference 
between this challenge and all of the others. The next hardest part of the 
challenge was fixing the code to pass for the 6th and 7th driver code. We 
settled on two unless statements on lines 25 and 26.
=end



