# Factorial

# I worked on this challenge [by myself, with: Khalma].

#Pseudocode
#input: number
#output: factorial of the number

#if the number is 0, should return 1
#if the the number is positive integer, multiply the number to previous number, until it reaches 1


# Your Solution Below
def factorial(number)
  return 1 if number == 0
  result = 1
  while number > 0
    result = result * number
    number -= 1
   end
  return result
end