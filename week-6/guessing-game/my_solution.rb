# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:A random number selected by the user
# Output: return true if the guessing number equals the randomly chosen number, if not, return false
# Steps:set the randomly selected number as a set value
# make a guess method to state is the guessing number if higher, lower, or same as the randomly selected number
# make a solved? method is the answer was corresponds to the randomly selected number.


# Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def solved?
  	return false if @number == nil
  	if @number == @answer
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
end

# Refactored Solution
class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def solved?
    return false if @number == nil || @number != @answer
    return true if @number == @answer
  end

  def guess(number)
    @number = number
    return :low if @number < @answer
    return :high if @number > @answer
    return :correct if @number == @answer
  end
end






# Reflection
# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
# They can act as a local variable within the class.  For instance if a value was given for a height of a person, it can be Input
# from the initialize method and passed on to next method as a local variable and various type of actions can be done on that variable.
# It can be thought of as variable that was input from the user to be used within the class

# When should you use instance variables? What do they do for you?
# Instance variable should be used if the variable wants to be used in all the methods within the class
# That instance variable can be used by other methods to perform other type of actions

# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
# The flow control was pretty straight forward only needing to use greater, less than, or equal to symbols.
# Comparing the instance variables was the key for this exercise.

# Why do you think this code requires you to return symbols? What are the benefits of using symbols?
# I am not 100% understanding symbols also, but from the readings, I think they return  lettered-values faster than strings.
# Also that, symbols will be recognized as same objects for the Class.
