# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: Eddie]

# I spent [8] hours on this challenge.

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
def mode(array)
  most=[]
  frequencies = Hash.new(0)
  array.each { |word| frequencies[word] += 1 }
  frequencies.each { |k,v| most.push(k) if v == frequencies.values.max }
  return most
end

# COuldn't refactor any more :(

# 4. Reflection
Which data structure did you and your pair decide to implement and why?
We first just used an array, and find out the most frequent word and its count, and it all worked
but the instruction recommended us using a hash, so we took the hard way and took more than a day to finish them

Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 
This was by far the most difficult problem that I have encountered.  It took me two -three days to come up with .values.max methods
I put them in a wrong order first, which took me a day to realize.

What issues/successes did you run into when translating your pseudocode to code?
I had a major issue trying to access only the value of the hash.  Pseudocoding was easy, because we can just imagine what needs to be done and just say it
But while I was coding, I noticed that it was difficult to translate some pseudocodes.  I learned a lesson to study more methods.

What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
I used .each method to access each key and value of the hash, and used .values to access only the values of the hash and used .max to only access the max value of the hash
