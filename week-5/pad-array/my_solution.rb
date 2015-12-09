# Pad an Array

# I worked on this challenge [by myself, with: Devin Mandelb]

# I spent [3] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? 
# An array, an integer, and an indescriminate object

# What is the output? (i.e. What should the code return?)
# new array with size of the input integer with other elements of type of third argument if necessary

# What are the steps needed to solve the problem?
# determine size of the argument array
# compare with the minimum size (second argument)
# IF min_size <= input array
#   return input array
# ELSE
#   return input array plus additional elements up to input size


# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  if array.size >= min_size
    return array
  end
  x = min_size - array.size
  loop do
  array.push(value)
    x -= 1
    break if x == 0
  end
  p array
end


def pad(array, min_size, value = nil) #non-destructive
  copy_array = []
  count = 0
  array.each do |fred|
    copy_array[count] = fred
    count += 1
  end
  if array.size >= min_size
    return copy_array
  end
  x = 0
  new_array= Array.new(min_size)
  while x < array.size
    new_array[x] = array[x]
     x += 1
  end
  while x < min_size
  new_array[x] = value 
    x += 1
  end
  return new_array
end


# 3. Refactored Solution
def pad!(array, min_size, value = nil) #destructive
  return array if array.size >= min_size
  new_array = Array.new(min_size - array.size, value)
  array.concat(new_array)
  return array
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = array.collect{|x| x }
  while min_size > new_array.size
    new_array.push(value)
  end
  return new_array
end

# pad!([1,2,3], 2, "apple")

# # 4. Reflection
# Were you successful in breaking the problem down into small steps?
# Yes, at first, my partner and I just started coding and got stuck afer first step.  So we pseudocoded into smaller steps to approach this problem

# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
# Yes, we forgot to pseudocode and got started.  We both had to come back and pseudocode because we didn't know which steps to take

# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
# No, I was confused and questioned the rspec sheet about the part when the min_size is zero.
# It was a simple misunderstanding on my part that I thought I was returing the original array, not a new set of array

# When you refactored, did you find any existing methods in Ruby to clean up your code?
# Yes, I used colllect method to get rid of unnecessary codes.  I strengthened my knowledge in some other
# methods such as push, concat and more

# How readable is your solution? Did you and your pair choose descriptive variable names?
# Yes, they are straight forward but array names are kinda messy
# Naming variables and methods have been the hardest part on my end and ill work on it

# What is the difference between destructive and non-destructive methods in your own words?
# I think destructive is destroying the existing array and using the data to some other methods
# Whereas non-destructive method is leaving the input just as is