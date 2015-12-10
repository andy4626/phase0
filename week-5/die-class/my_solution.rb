# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: number of sides of the dice
# Output: using methods from class Die, I can make sides method to show number of sides and roll method to randomly show the dice
# Steps: create three methods;initialize, sides and roll
# initialize that takes number of sides
# sides that puts number of sides
# roll that puts the random number from 1 to number of sides


# 1. Initial Solution

class Die
    def initialize(sides)
        @sides=sides
        raise ArgumentError.new('Higher number please!') if @sides < 1
    end
    
    def sides
    return @sides
    end
    
    def roll
    return rand(@sides)+1
    end
end


# 3. Refactored Solution
#############Could not refactor any more
class Die
    def initialize(sides)
        @sides=sides
        raise ArgumentError.new('Higher number please!') if @sides < 1
    end
    def sides
    return @sides
    end
    def roll
    return rand(@sides)+1
    end
end




# 4. Reflection
# What is an ArgumentError and why would you use one?
#I would use argumenterror when wrong type of class was entered for an argument
#For example, if I expected an integer for one argument and string was put in, I would want to raise an argument

# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
# I used rand method to randomly select any number from 1 to number of sides.

# What is a Ruby class?
# It is like a blueprint.  It is to sort out the type of data or objects being processed

# Why would you use a Ruby class?
# To implement object-orientation, Ruby needs to use class. to clarify its usage and methods

# What is the difference between a local variable and an instance variable?
# Local variable is variable that is defined within a method
# Instance variable starts with @ sign and it is variable for that instant moment or method

# Where can an instance variable be used?
# Instance variable can be used across the methods for any instance or object. 
# It can be changed when it's passed down from methods to methods
