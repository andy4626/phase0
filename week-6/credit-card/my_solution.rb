# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: 16 digit credit card number
# Output: true or false if it's valid card
# Steps: break the 16 digits into individual numbers
# multiply 2 to every other number (the odd indexes)
#if the number is 10 or greater, break it into individual numbers
#Add all the numbers
#divide by 10, and if there's no remainder return true, else false

# Initial Solution

class CreditCard
  def initialize(number)
    @number = number
    raise ArgumentError.new("Your card number is 16 digits!") if @number.to_s.length != 16
  end
  
  def check_card
    individual= @number.to_s.split("")
    individual.map! { |number|
      if individual.index(number)%2 == 0
        number.to_i * 2
      else
        number.to_i
      end
      }
     individual.map! { |number|
      if number > 9
        number.to_s.split("")
      else number = number
      end
      }
    individual.flatten!
    individual.map! { |number|
      number = number.to_i
      }
    sum = individual.inject{|sum,x| sum + x }
    if sum %10 == 0
      return true
    else 
      return false
    end
  end
end


# Refactored Solution
class CreditCard
  def initialize(number)
    @number = number
    raise ArgumentError.new("Your card number is 16 digits!") if @number.to_s.length != 16
  end
  
  def check_card
    individual= @number.to_s.split("")
    individual.map! { |number|
    individual.index(number)%2 == 0 ? (number.to_i * 2).to_s.split("") : number.to_i
  }
    individual.flatten!.map! { |number| number = number.to_i }
    individual.inject{|sum,x| sum + x } %10 == 0
  end
end


# Reflection
# What was the most difficult part of this challenge for you and your pair?
# The most difficult challenge was splitting numbers greater 10 into individual numbers.
# However, I was able to change it into a string and do the split method to split them into individual numbers
# and change it back to integer.

# What new methods did you find to help you when you refactored?
# I learned a new method called flatten, which takes the objects within the subarray and turns it into a single array

# What concepts or learnings were you able to solidify in this challenge?
# I was able to solidify my knowledge of map! that it will change its original state.
# I also learned that split method will return an array


