# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: Eddie]

# I spent [4] hours on this challenge.

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
# compare values of hashes,
# identifies the highest values
# returns the key(s) with the highest value

# 1. Initial Solution

def mode(array)
  most=[]
  frequencies = Hash.new(0)
  array.each { |word| frequencies[word] += 1 }
  frequencies.each { |k,v| most.push(k) if v == frequencies.values.max }
  return most
end

# 3. Refactored Solution




# 4. Reflection