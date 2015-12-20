# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [5] hours on this challenge.


# Release 0: Pseudocode
# Outline: Make a game of bingo.  Access the numbers with corresponding grid.
# Replace the number with x when the number is called, and display the result

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #Create an instance variable with array with letters b, i, n, g, o and randomly select one letter
  #create an instance variable which randomly selects any number between 1 to 100

# Check the called column for the number called.
# First, create a hash containing corresponding index for letters b i n g and o
  #Iterate through each method for bingo board and check if the corresponding letter has matching number

# If the number is in the column, replace with an 'x'
  #Iterate through each subarray and replace the number with x if it exists

# Display a column to the console
  #print the letters b i n g and o on top of the bingo board

# Display the board to the console (prettily)
  #display the bingo board by its subarrays
  # iterate through the bingo board with each method and puts the each iterated element

# Initial Solution

class BingoBoard
  attr_accessor :bingo_board
  attr_accessor :last_call

  def initialize(board)
    @bingo_board = board
    @last_call = []
  end

  def call
    @letters = ['B', 'I', 'N', 'G', 'O']
    @letter= @letters.sample
    number = rand(1..100)
    @last_call = [@letter, number]
  end
  
  def check
    col_converter = { 'B' => 0, 'I' => 1, 'N' => 2, 'G' => 3, 'O' => 4 }
    col = col_converter[last_call[0]]
    @bingo_board.each do |row| 
      row[col] = "X" if row[col] == last_call[1]
    end
  end
  
    def display_board
    puts @letters.join('  ')
    @bingo_board.each { |row| puts row.join(' ') }
  end
end

# Refactored Solution
class BingoBoard
  attr_accessor :bingo_board

  def initialize(board)
    @bingo_board = board
  end

  def call
    @letters= %w{B I N G O}
    @letter = @letters.sample
    @number = rand(1..100)
  end
  
  def check
    col_converter = { 'B' => 0, 'I' => 1, 'N' => 2, 'G' => 3, 'O' => 4 }
    col = col_converter[@letter]
    @bingo_board.each do |row| 
      row[col] = "X" if row[col] == @number
    end
  end
  
    def display_board
    puts @letters.join('  ')
    @bingo_board.each { |row| puts row.join(' ') }
  end

end



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.call
new_game.check
new_game.display_board



#Reflection
# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
# To be honest, I think my pseudocoding is more of breaking the codes into smaller fragments instead of psuedocoding.
# I hope I have been following the instructions clearly, but I am trying my best.

# What are the benefits of using a class for this challenge?
# The benefit of using a class for this challenge is that the bingo board has to be used for all the methods
# Therefore, using a class and its methods on its bingo board makes it easier to do the actions that I desire

# How can you access coordinates in a nested array?
# It is just like using indexes of an array, but you gotta use index of index.
# It is hard to write and explain it but it is like a math equation where number outisde the bracket
# is multiplied inside each number inside the brackets.  Just stating it as index of index may be simpler

# What methods did you use to access and modify the array?
# I used .each method to go through each subarray and used .join method to join them back together to display them


# Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
# I learned %w(), which is an string array but its simpler and does not require quotes around each strings
# I also learned .sample method which randomly selects an object inside an array

# How did you determine what should be an instance variable versus a local variable?
# Local variable is only used in one method and cannot be accessed by other methods, whereas
# instance variable can be access throughout the whole class.

# What do you feel is most improved in your refactored solution?
# To be honest, I don't like my refactoring in this exercise the most out of all the refactoring i've done.
# If you take a look at my previous commit before this exercise, I totally misunderstood the exercise
# I thought call method asks for user's input(argument) of string and random number so I had a totally
# different approach from what was intended.  After reading and getting stuck for more than a day,
# I was able to generate a random number and letter to access through each subarray and replace with 
# X when it was found.  But understanding the question was the hardest part.  
# Refactoring was not done much, except in the parts of choosing local variables and disregarding unnecessary
# variables.


