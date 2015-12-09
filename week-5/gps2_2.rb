# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
# split a string, push it into a hash key
  # set default quantity (0)
  # print the list to the console 
# output: a hash with its quantity

# Method to add an item to a list
# input: item name and optional quantity
# steps:add the name and quantity to the hash list that we made
# output: newly updated list

# Method to remove an item from the list
# input:item name
# steps:delete the name and quantity from the hash list
# output: newly updated list

# Method to update the quantity of an item
# input: item name with new quantity value
# steps: find the key, change the quantity value
# output: newly updated list

# Method to print a list and make it look pretty
# input: name of the hash
# steps:print out all the names and quantity of the groceries
# output: newly updated list




# INITIAL CODE:
# -------------
# Define your methods here...


# $global_variable
# CONSTANT # The same as a global variable, but your not allowed to change it (redefine it)

# @instance_variable # only avaialbe to single instance
# @@class_variable # aka an instnace variable shared by all instances of a class

# local_variable

# arguements are defined as local variables inside a method.


# def say_hello #(name)
#   # name != @name
#   puts "Hello #{@name}"
# end


# @my_name = "Michael"
# say_hello(@my_name)



# print_results(@something)








def make_list(string)  
  # temp_array = string.delete(",").split(" ")
  temp_array = string.gsub(",", "").split(" ")
  temp_array.each do |item|
    $groceries[item]=0
  end
end

def print_list #(hash)
  title = "Grocery List"
  puts title
  puts "-" * title.length
  
  puts "There are no items in the list" if $groceries.empty?
  
  $groceries.each do |item, quantity|
    puts "#{item} - #{quantity}"
  end
  puts "\n"
end

def add_item(item, quantity = 1)
  # Validations  
  validate_item_name(item)
  if $groceries.include?(item)
    $groceries[item] += 1
  else
    $groceries[item] = quantity
  end
  print_list #($groceries)
end

def delete_item(item)
  validate_item_name(item)
  $groceries.delete(item)
  print_list #($groceries)
end

def validate_item_name(item)
  unless item.is_a? String
    puts "Item must be a string"
    raise ArgumentError.new('Item must be a string')
  end
end

def change_quantity(item, quantity)
  add_item(item, quantity)
end



# DRIVER CODE:
# ------------
$groceries = {}
print_list


# then use methods to manipulate your list here...
make_list("apple, onions, bread")
add_item("apple", 2)
add_item("onions", 3)