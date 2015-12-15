# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: an array of strings 
# Output: returns one of the strings randomly
# Steps:get the length of the array of strings
# for sides method, return the size of the array of strings
# for roll method, return the randomly numbered index of the array of strings.


# Initial Solution

class Die
  def initialize(labels)
  @labels= labels
  raise ArgumentError.new('Enter more strings please') if @labels.empty?
  end

  def sides
  	return @labels.size
  end

  def roll
  	return @labels[rand(@labels.size)]
  end
end


# Refactored Solution
class Die
  def initialize(labels)
  @labels= labels
  raise ArgumentError.new('Enter more strings please') if @labels.empty?
  end

  def sides
    return @labels.size
  end

  def roll
    return @labels[rand(@labels.size)]
  end
end

# Nothing to refactor.  
# Reflection
# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
# I had to put in an array of strings, instead of just a number.  I did not change much logics, but had to change the logics for roll and sides methods.
# I just needed to treat the new input as an array instead of a number like the last exercise

# What does this exercise teach you about making code that is easily changeable or modifiable? 
# This was the shortest exercise ever but it also taught me the most about the concept of Class.  I was confused about it.


# What new methods did you learn when working on this challenge, if any?
# I learned how to use raising argument method better and newest method that I learned was .empty? to check if the array was empty

# What concepts about classes were you able to solidify in this challenge?
# I was able to solidigy that classes are like subcategorization of object-orientation.  It is like creating a new string, array, or booleans
# Then, I can created new methods for the classes that I created.  I was stuck last week but now I feel like I can use this class to make more codes.