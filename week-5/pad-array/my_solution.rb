# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


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
  p array
end

# pad!([1,2,3], 2, "apple")

# 4. Reflection