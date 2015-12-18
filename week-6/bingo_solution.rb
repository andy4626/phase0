# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline: Make a game of bingo.  Access the numbers with corresponding grid.
# Replace the number with x when the number is called, and display the result

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here

# Check the called column for the number called.
  #fill in the outline here

# If the number is in the column, replace with an 'x'
  #fill in the outline here

# Display a column to the console
  #fill in the outline here

# Display the board to the console (prettily)
  #fill in the outline here

# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def call(string)
    @letter = string[0].downcase
    number= string[1..-1]
    @number= number.to_i
  
    if @letter =="b" && @bingo_board[0..4][0].include?(@number)
      return true
    else
      return false
    end

    if @letter =="i" && @bingo_board[0..4][1].include?(@number)
      return true
    else
      return false
    end
    
    if @letter =="n" && @bingo_board[0..4][2].include?(@number)
      return true
    else
      return false
    end
    
    if @letter =="g" && @bingo_board[0..4][3].include?(@number)
      return true
    else
      return false
    end
    
    if @letter =="o" && @bingo_board[0..4][4].include?(@number)
      return true
    else
      return false
    end
  end

  def check
    if @letter == "b"
      counter=0
      while counter < 5
        @bingo_board[i][0].gsub!("X") if @bingo_board[i][0]==@number
      end
      counter+=1
    end
  if @letter == "i"
      counter=0
      while counter < 5
        @bingo_board[i][1].gsub!("X") if @bingo_board[i][1]==@number
      end
      counter+=1
    end
  if @letter == "n"
      counter=0
      while counter < 5
        @bingo_board[i][2].gsub!("X") if @bingo_board[i][2]==@number
      end
      counter+=1
    end
  if @letter == "g"
      counter=0
      while counter < 5
        @bingo_board[i][3].gsub!("X") if @bingo_board[i][3]==@number
      end
      counter+=1
    end
  if @letter == "o"
      counter=0
      while counter < 5
        @bingo_board[i][4].gsub!("X") if @bingo_board[i][4]==@number
      end
      counter+=1
    end
end

end
# Refactored Solution



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
p new_game.call("B22")



#Reflection
