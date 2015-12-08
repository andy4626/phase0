# Numbers to Commas Solo Challenge

# I spent [2.5] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? A numeric value or a number
# What is the output? A numbered string with comma's in every last three digits.
# What are the steps needed to solve the problem? change it into a string, reverse them, chop them into 3s
# and then add commas in every 3 strings, then join them and then reverse them back 


# 1. Initial Solution
def separate_comma(number)
    reversed_number = number.to_s.reverse
    comma = reversed_number.scan(/\d{1,3}/).join(",").reverse
    return comma
 end



# 2. Refactored Solution
def separate_coma(number)
	return number.to_s.reverse.scan(/\d{1,3}/).join(",").reverse
end



# 3. Reflection
# What was your process for breaking the problem down? What different approaches did you consider?
# I broke it into smaller pictures, then thought about smaller pictures, but not forgetting about the bigger picture.
# Since I knew, I couldnt join commas from the front, I reversed it and added a comma every three positions
# And reversed back

# Was your pseudocode effective in helping you build a successful initial solution?
# Yes, it did actually made me think about going reverse and reversing it back again later.

# What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
# I used scan, reverse, to_s, and join.  Scan was to scan the string individually, reverse is used to reversethe 
# string.  To_s changes the number into a string and join joins every split items into one

# How did you initially iterate through the data structure?
# I first did split method after changing the number to a string, then I was stuck, so I read about scan method

# Do you feel your refactored solution is more readable than your initial solution? Why?
# Due to all the dots before the method, it clearly shows the step by step of my approach toward this problem.
