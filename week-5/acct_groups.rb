# Pseudocode
# Input: Array of names
# Output: array of names in 3s, 4s or 5s
# Steps:
# Divide the group by 5 and if it is divisible, group by 5 people,
# if the remainder is 1, group by 4
# 	calculate all the non-divisible numbers and group them into either 3s or 4s
def assign(group)
	if group.length % 5 == 0
		return group.shuffle.each_slice(5).to_a
	elsif group.length % 5 == 1
		return group.shuffle.each_slice(4).to_a
	elsif group.length % 5 == 2
		return group.shuffle.each_slice(4).to_a
	elsif group.length % 5 == 3
        return group.shuffle.each_slice(5).to_a
	elsif group.length % 5 == 4
        return group.shuffle.each_slice(5).to_a
	end
end


# What was the most interesting and most difficult part of this challenge?
# I still do not get the array of names that I want.  They shuffle all the time which is interesting but
# 	grouping them into 3s, 4s or 5s with many different numbers was hard to code.  I do not think this code is perfect yet, but I plan to sleep on it and really
# 		put my thoughts into this

# Do you feel you are improving in your ability to write pseudocode and break the problem down?
# Yes, I first had no idea when I started without pseudocoding, but once I broke it down to smaller pieces, I was able to somewhat code 

# Was your approach for automating this task a good solution? What could have made it even better?
# If there was more methods to randomly generate groups, but then it would make this exercise not fun.  I think I still need to study more methods

# What data structure did you decide to store the accountability groups in and why?
# Into an array, because there is only a group of names

# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
# I could not refactor any more, because of all the mathematical conditions that I implemented