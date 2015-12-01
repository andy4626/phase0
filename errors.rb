def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
end
end
# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
#errors.rb
# 2. What is the line number where the error occurs?
#Line number 5
# 3. What is the type of error message?
#unexpected end of input
# 4. What additional information does the interpreter provide about this type of error?
#expecting keyword_end
# 5. Where is the error in the code?
#After all the code
# 6. Why did the interpreter give you this error?
#Because there is no end to finish the method.  The first end was for the while loop and second end was needed to finish the method

# --- error -------------------------------------------------------

south_park=4

# 1. What is the line number where the error occurs?
#23
# 2. What is the type of error message?
#'<main>' , name error
# 3. What additional information does the interpreter provide about this type of error?
#:underfined local variable or method 'south_park' for main object
# 4. Where is the error in the code?
#The whole name is the error
# 5. Why did the interpreter give you this error?
#Because the variable does not have any values or data.

# --- error -------------------------------------------------------
def cartman()
	puts "hello"
end
cartman()

# 1. What is the line number where the error occurs?
#38
# 2. What is the type of error message?
#main
# 3. What additional information does the interpreter provide about this type of error?
#undefined method 'cartman' for main:object no method error
# 4. Where is the error in the code?
#the whole thing is the error
# 5. Why did the interpreter give you this error?
#The method cartman was not set up, so wrote simple method cartman

# --- error -------------------------------------------------------

def cartmans_phrase(truth)
  puts "I'm not fat; I'm big-boned! and #{truth}"
end

cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
#55
# 2. What is the type of error message?
#wrong number of arguments
# 3. What additional information does the interpreter provide about this type of error?
#Argument error
# 4. Where is the error in the code?
#when defining the method
# 5. Why did the interpreter give you this error?
#Because the method was not able to take any input but we put in an input anyways

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says("Go away!!")

# 1. What is the line number where the error occurs?
#74
# 2. What is the type of error message?
#wrong number of arguments
# 3. What additional information does the interpreter provide about this type of error?
#Argument error
# 4. Where is the error in the code?
#An input was forgotten when calling this method
# 5. Why did the interpreter give you this error?
#Input must be inserted to call the method



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', 'Andrew')

# 1. What is the line number where the error occurs?
#95
# 2. What is the type of error message?
#wrong number of argument(1 for 2)
# 3. What additional information does the interpreter provide about this type of error?
#Argument Error
# 4. Where is the error in the code?
#on calling the argument
# 5. Why did the interpreter give you this error?
#Only one argument was given when it requires two.  So gave another one

# --- error -------------------------------------------------------

 "Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
#114
# 2. What is the type of error message?
#String can't be coerced into Fixnum
# 3. What additional information does the interpreter provide about this type of error?
#Type Error
# 4. Where is the error in the code?
# Just error in the order of this syntax
# 5. Why did the interpreter give you this error?
#the number has to come after the string

# --- error -------------------------------------------------------

amount_of_kfc_left = 20/3


# 1. What is the line number where the error occurs?
#129
# 2. What is the type of error message?
#in '/'
# 3. What additional information does the interpreter provide about this type of error?
#divided by 0
# 4. Where is the error in the code?
#The actual 0 after the 20/
# 5. Why did the interpreter give you this error?
#Because no number is divisible by 0

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
#145
# 2. What is the type of error message?
#cannot load such file
# 3. What additional information does the interpreter provide about this type of error?
#Load error
# 4. Where is the error in the code?
#The file name itself.  It does not exist
# 5. Why did the interpreter give you this error?
#We were asking for a file that does not exist


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
=begin
	
Which error was the most difficult to read?

The first one.  It was indicating that end was needed at the end of the whole codes.  It was hard to locate where the actual error was.

How did you figure out what the issue with the error was?

Just read the first code and saw that there is an error.  It was easily spotted with bare eyes, got lucky.

Were you able to determine why each error message happened based on the code? 

Yes.  Even though I hope the error message might suggest any alternatives, but I'm grateful for this error message still.

When you encounter errors in your future code, what process will you follow to help you debug? => e

I would break it down to smaller compartments and work one by one.

end
