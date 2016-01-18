# PezDispenser Class from User Stories

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.


# 1. Review the following user stories:
# - As a Pez user, I'd like to be able to "create" a new Pez dispenser with a group of flavors that
#      represent Pez so it's easy to start with a full Pez dispenser.
# - As a Pez user, I'd like to be able to easily count the number of Pez remaining in a dispenser
#      so I can know how many are left.
# - As a Pez user, I'd like to be able to take a Pez from the dispenser so I can eat it.
# - As a Pez user, I'd like to be able to add a Pez to the dispenser so I can save a flavor for later.
# - As a Pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order
#      of the flavors coming up.


# Pseudocode
# Input: a pez class that has flavors
# Output: desired methods' answers
# Steps:initialize all the flavors
# create methods that: 
# 1. give total count of the pez
# 2. prints out the flavors of the pez
# 3. able to add pez to the first slot
# 4. able to delete the first slot to eat the pez


# Initial Solution

# class PezDispenser
# def initialize(flavors)
#     @flavors=flavors
# end

# def pez_count
#    @flavors.length 
# end

# def see_all_pez
#    @flavors 
# end

# def add_pez(new_pez)
#     @flavors.insert(0,new_pez)
# end

# def get_pez
#    puts @flavors.shift 
# end
# end



# Refactored Solution
class PezDispenser
def initialize(flavors)
    @flavors=flavors
end

def pez_count
   @flavors.length 
end

def see_all_pez
   @flavors 
end

def add_pez(new_pez)
    @flavors.unshift(new_pez)
end

def get_pez
   @flavors.shift 
end
end





# DRIVER TESTS GO BELOW THIS LINE

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"
puts "Here's a look inside the dispenser:"
puts super_mario.see_all_pez
puts "Adding a banana pez."
super_mario.add_pez("banana")
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"




# # Reflection
# What concepts did you review in this challenge?
# I solidified my knowledge on Class.  After working on the Car class with the pair, I wanted to solidify
# my knowledge on class, so I chose this challenge.  This was easier than Car class so it was fine.
# I forgot how to get the first element from the array.  So I found two new methods.


# What is still confusing to you about Ruby?
# All the confusion was gone with class after this exercise
# I am still working on my attr_accessor features.

# What are you going to study to get more prepared for Phase 1?
# I am going to study attr_accessor features and the differences between the others.
