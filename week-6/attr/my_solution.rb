#Attr Methods

# I worked on this challenge [by myself, ]

# I spent [3] hours on this challenge.

# Pseudocode

# Input: A class that can access other class
# Output: A class output using data from different class
# Steps: Create a class that returns a name
# Create another class that gets access to that name and returns a string including it
Relase 5:
class NameData
  attr_accessor :name
  def andrew
    return "Andrew"
  end
end

class Greetings
  def initialize 
    @name = NameData.new
  end

  def hello
    puts "Hello #{@name.andrew}! How wonderful to see you today!"
  end
end
name= Greetings.new
name.hello



# Reflection
Release 1:
What are these methods doing?
They are making a new instance_of_profile that the class Profile was applied upon.
The methods were changing and printing the the instance variable that was set within the class.  

How are they modifying or returning the value of instance variables?
They are setting the newly changed instance variable with the newest input by using the methods 
and returning the newly modified value.

Release 2:
What changed between the last release and this release?
There is a new attr_reader :age on line 5 and got rid of what_is_age method because it can be called 
by attr_reader attribute

What was replaced?
Telling what age the person is has been changed.  NEw attr_reader will replace that function.

Is this code simpler than the last?
Yes, it got rid of a whole set of code for a simple one liner attribute method.

Release 3:
What changed between the last release and this release?
A new attr_writer has been added on line 6.  No method involving age can be spotted.

What was replaced?
Any method talking about age has been removed.

Is this code simpler than the last?
Yes, it is shorter and refactored.  It has gotten rid of methods involving age

Release 4:
It is done on the actual file



# Reflection:
# What is a reader method?
# It is a reader which means that it just return a value or state outside the class
# But it does not change.

# What is a writer method?
# It is a writer which means that you can change the value of the variable outside te class
# But it is not readable.

# What do the attr methods do for you?
# I'm not 100% sure but I think it acts like a instance variables that can be accessed outside the class

# Should you always use an accessor to cover your bases? Why or why not?
# No, because sometimes, you want your value to be not read or changed.
# It will vary depending on the type of data

# What is confusing to you about these methods?
# I don't get why instance variable is sufficient enough.




