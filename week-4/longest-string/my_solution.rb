# Longest String

# I worked on this challenge [by myself, with: ].

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# Your Solution Below
def longest_string(list_of_words)
  # Your code goes here!
puts list_of_words.min { |x,y| y.length <=> x.length }
end

my_array=["abcd", "adfdfdf","p", "hi", "bye", "hello"]
longest_string(my_array)
