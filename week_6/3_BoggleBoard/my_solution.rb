# U2.W6: Create a BoggleBoard Class


# I worked on this challenge [by myself, with: ].


# 2. Pseudocode
=begin 
take boggle board challenge from week 5 and paste them inside class
create initialize method that takes board as argument
create a class variable and set equal to board
everywhere board is used, switch with class variable
take board argument out of every method
=end


# 3. Initial Solution
class BoggleBoard
	def initialize(board)
		@board = board
	end
	def create_word(*coords)
		coords.map { |coord| @board[coord.first][coord.last]}.join("")
# [1,2], [1,1], [2,1], [3,2]
# => "dock"
	end
	def get_row(row)
		return @board[row]
	end
	def get_col(col)
		@board.map {|row| row[col]}
# => Row: 0:brae, 1:iodt, 2:eclr, 3:take, Column: 0:biet, 1:roca, 
# 2:adlk, 3:etre
	end
end
 
 
dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]
 

 


# 4. Refactored Solution
class BoggleBoard
	def initialize(board)
		@board = board
	end
	def create_word(*coords)
		coords.map { |coord| @board[coord.first][coord.last]}.join("")
	end
	def get_row(row)
		return @board[row]
	end
	def get_col(col)
		@board.map {|row| row[col]}
	end
end





# 1. DRIVER TESTS GO BELOW THIS LINE
# create driver test code to retrieve a value at a coordinate here:
# implement tests for each of the methods here:
boggle_board = BoggleBoard.new(dice_grid)
boggle_board.create_word([2, 1], [1, 1], [2, 2], [1, 2]) == "cold"
boggle_board.get_row(2) == ["e", "c", "l", "r"]
boggle_board.get_col(1) == ["r", "o", "c", "a"]
boggle_board.create_word([3, 2]) == "k"
# 5. Reflection 
=begin 
Pretty simple to change into a class. I feel It would of been more 
simple if it started out as a class. I like using the object oriented 
approach. Calling the methods on the board are easier, as you don't need 
to keep adding the board argument every time you want to spell out a word. 
You can create and name a boggle board whatever you want. 
=end