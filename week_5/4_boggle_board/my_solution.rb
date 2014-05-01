# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge [by myself, with: ].

boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]


# Part 1: Access multiple elements of a nested array

# Pseudocode
=begin 
define method called create_word with:
concatenate the list of coordinates given into a word
=end
# Initial Solution
def create_word(board, *coords)
	coords.map { |coord| board[coord.first][coord.last]}.join("")
end
# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE
create_word(boggle_board, [2, 1], [1, 1], [2, 2], [1, 2]) == "cold"

# Reflection 
# Not much to do here, just a little pseudo code and driver code

#-------------------------------------------------------------------------------

# Part 2: Write a method that takes a row number and returns all the elements in the row.  

# Pseudocode
=begin 
define a method called get_row with one argument col
returns the index of the called row
=end
# Initial Solution
def get_row(board, row)
	return board[row]
end
# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE
get_row(boggle_board, 2) == ["e", "c", "l", "r"]

# Reflection 
# pretty simple. Just returning the index of the row


#-------------------------------------------------------------------------------

# Part 3: Now write a method that takes a column number and returns all the elements in the column.

# Pseudocode
=begin 
define a method called get_col with one argument col
for each index in board
return the given index of that array
=end
# Initial Solution
def get_col(board, col)
    column = []
    board.each do |x|
        column.push(x[col])
	end
    return column
end
# Refactored Solution
def get_col(board, col)
    board.map {|row| row[col]}
end

# DRIVER TESTS GO BELOW THIS LINE
get_col(boggle_board, 1) == ["r", "o", "c", "a"]

# Reflection 
=begin 
A little more complicated. Called the each method initially, 
then realized I should use the map method similar to the 
first example.
=end