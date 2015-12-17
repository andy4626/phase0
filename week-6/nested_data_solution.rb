# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts: 2
# ============================================================
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts: 1
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts: 1
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]
] 
number_array.map! do |element|
 if element.kind_of?(Array)
   element.map! {|inner| inner + 5}
 else
   element + 5
    end
end
p number_array


# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]
startup_names[1][2].map! {|name| name <<"ly"}
p startup_names

#Reflection
# What are some general rules you can apply to nested arrays?
# I think that you have to know your index counts really well.  Also iteration over the subarrays are confusing 
# it has to be looked at carefully.  Just knowing which index is the key

# What are some ways you can iterate over nested arrays?
# We can iterate into subarray with map! method and change the elements in the array with else statement like my relase 3


# Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
# .kind_of? was a new method that was given in the exercise but I familiarized myself with map! method more
# other than that, it was repeating the same thing but with more complication.

