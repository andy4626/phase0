4.3.1
https://github.com/andy4626/phase0/blob/master/week-4/address/my_solution.rb
4.3.2
https://github.com/andy4626/phase0/blob/master/week-4/math/my_solution.rb
#Full name greeting: Write a program that asks for a person's first name, then middle, then last. Finally, it should greet the person using their full name.
def whats_ur_name
puts "What is your first name?"
first_name=gets.chomp
puts "What is your middle name?"
middle_name=gets.chomp
puts "What is your last name?"
last_name=gets.chomp
puts "Hello, #{first_name} #{middle_name } #{last_name}.  It's nice to meet you"
end


#Bigger, better favorite number: Write a program that asks for a person's favorite number. Have your program add 1 to the number, and then suggest the result as a bigger and better number.
def better_num
puts "What is your favorite number?"
num=gets.chomp.to_s
big_num= num.to_i + 1
puts "#{big_num.to_s} is bigger and better than your #{num}"
end

=begin
How do you define a local variable?
I can define a local variable by just stating a local variable or name in lower case and no spaces.  Underscore can be used for spaces if needed.
	And have it set equal to(=) whatever integers, values, or string preferred

How do you define a method?
I can define a method by writine def to declare it as a method and type in method name. All lower case and underscore is preferred and start defining a method.

What is the difference between a local variable and a method?
variable has a set value.  It's like a data where as method is like a math equation where if sometime input is given, and output will be provided.

How do you run a ruby program from the command line?
i will write : ruby (filename.rb)

How do you run an RSpec file from the command line?
i will write rspec (filename_spec.rb)
=end
#What was confusing about this material? What made sense?