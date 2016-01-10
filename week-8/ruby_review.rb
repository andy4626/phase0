# I worked on this challenge [by myself].
# This challenge took me [2] hours.


# Pseudocode
# Input= Array of numbers
# Output = print out fizzbuzz for numbers that are divisible by 3 and 5, fizz for number that are divisible
# only by 3, and buzz for numbers that are dibisible only by 5, and print just the numbers for the rest
# Steps= Iterate through the array of numbers
# check its divisibility, and put fizzbuzz that numbers that are divisible both by 3 and 5
# put fizz for numbers that are divisible only by 3
# put buzz for numbers that are divislb only by 5
# put just the numbers for the rest
# print out the results in array

# Initial Solution
# def super_fizzbuzz(array)
# result=[]
# array.each do |i|
#     if i % 3 == 0 && i % 5 == 0
#       result << 'FizzBuzz'
#     elsif i % 3 == 0
#       result << 'Fizz'
#     elsif i % 5 == 0
#      result << 'Buzz'
#     else
#      result << i
#     end
#   end
# p result
#   end



# Refactored Solution
def super_fizzbuzz(array)
i=0
while i < array.length
    if array[i]%5==0 && array[i]%3==0
        array[i]= 'FizzBuzz'
        elsif array[i]%3==0
        array[i]= 'Fizz'
        elsif array[i]%5==0
        array[i]= 'Buzz'
    end
i+=1
end
p array
end





# # Reflection
# What concepts did you review or learn in this challenge?
# I solidified my knowledge more on destructive methods and nondestructive methods.  And different type of
# iteration of the array.

# What is still confusing to you about Ruby?
# I am still a little confused with pushing method with '<<', but I got a little hang of it just now.

# What are you going to study to get more prepared for Phase 1?
# I am going to learn more on the different types of iteration.  I will also learn more new types of methods.
# I am also going to teach myself a little bit about regular expressions, because it seems very handy.


