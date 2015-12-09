# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: Eddie]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? Array of elements with various frequencies
# What is the output? (i.e. What should the code return?) most frequent element
# What are the steps needed to solve the problem?

# Create a hash within method
# Puts elements in hash paired with frequency
# Sort the hashes by frequency stored in value
# Reverse the order of hashes, so most frequent is first
# compare values of hashes,
# identifies the highest values
# returns the key(s) with the highest value

# 1. Initial Solution

def mode(array)
  frequencies = Hash.new(0)
  array.each { |word| frequencies[word] += 1 }
  frequencies = frequencies.sort_by { |a, b| b }
  frequencies.reverse!
  element = frequencies.max_by{ |k,v| v }[0] 
  p element
end


# 3. Refactored Solution




# 4. Reflection