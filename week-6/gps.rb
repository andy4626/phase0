# Your Names
# 1) Kevin Huang
# 2)Andrew Kim

# We spent [2] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_servings)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  unless library.has_key?(item_to_make)
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end
  #line 11-21: figure out if the item_to_make input exists in the library

  #amount of ingredients required to make the item
  remaining_servings = num_of_servings % library[item_to_make]
  #tells the number of remaining ingredients  
  if remaining_servings == 0
    return "Calculations complete: Make #{num_of_servings / library[item_to_make]} of #{item_to_make}"
    #tells how many items can be made with no remaining ingredients
  else
    if remaining_servings == 6
      suggestion = "Cake and Cookie"
    elsif remaining_servings == 5
        suggestion = "Cake"
    else
        suggestion = "Cookie"
    end
    return "Calculations complete: Make #{num_of_servings / library[item_to_make]} of #{item_to_make}, you have #{remaining_servings} leftover servings. Suggested baking items:  #{suggestion}."
    #tells how many items can be made and suggesting other options for the remaining ingredients
  end
end