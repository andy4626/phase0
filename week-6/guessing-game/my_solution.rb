# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:


# Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def solved?
  	return false if @number == nil
  	if @number == answer
  		return true
  	else
  		return false
  	end
  end

  def guess(number)
  	@number = number
  	if @number < @answer
  		return :low
  	elsif @number > @answer
  		return :high
  	elsif @number = @answer
  		return :correct
  	end
  end

  # Make sure you define the other required methods, too
end




# Refactored Solution






# Reflection