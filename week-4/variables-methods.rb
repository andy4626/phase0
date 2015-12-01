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
