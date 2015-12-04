# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

#input: array of numbers
#output: the sum of all number
#access the array of numbers individually and add them up

# 1. total initial solution
def total(array)
  i = 0
  result = 0
  while i < array.length
    result = result + array[i]
    i+=1
  end
  return result
end
# 3. total refactored solution

nums.inject { |result, number| result + number }


# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: array of strings
# Output: the sum of all strings
# Steps to solve the problem.
#Access the array of strings individually and add them up with space in between them

# 5. sentence_maker initial solution
def sentence_maker(array)
  i = 0
  result = ""
  while i < array.length
    result = result + " "+ array[i]
    i+=1
  end
  return result
end

# 6. sentence_maker refactored solution

words.inject { |result, string| result + " "+ string }

