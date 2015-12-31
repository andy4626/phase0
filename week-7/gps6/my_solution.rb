# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#require_relative asks file relative to the path of the file
#require asks for specific routes to the file

#
require_relative 'state_data'


class VirusPredictor

  def initialize(state_of_origin, population_density, population)
     # initializes bunch of inputs to instance variables
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  def virus_effects
     # summarizes the number of deaths and speed of spread
    predicted_deaths
    speed_of_spread
  end

  private
    # methods for the coder's views only, not for the public to access outside the class

  def predicted_deaths
    # predicts the deaths of each state based on their population density
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  def speed_of_spread 
  # The amount of time it takes for the virus to spread in each state
  #in months
  # We are still perfecting our formula here. The speed is also affected
  # by additional factors we haven't added into this functionality.
    speed = 0.0
    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
STATE_DATA.each do |state_name, state_data|
  $x= VirusPredictor.new(state_name,state_data[:population_density],state_data[:population])
  $x.virus_effects
end

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?
# There was a hash within a hash.  So we had to initerate through the hash within the hash.
# One was key and value like key => value 
# or a symbol, which is also the key and a value which was key: value   or :key => value which is the same thing

# What does require_relative do? How is it different from require?
# Require relative gets the data within the relatively same directory, and require lets you get the data or
# the file with absolute path to the directory

# What are some ways to iterate through a hash?
# I can do each method and divide it into two sections |x,y|
#   and if there is a hash within the hash, i can iterate through them within the each method

# When refactoring virus_effects, what stood out to you about the variables, if anything?
# I got to work with global variable which is new.  It creates a instance variable within calling the method which was very new to me.

# What concept did you most solidify in this challenge?
# I solidified the concept of iteration of nested arrays and hashes.  
# All the confusion is gone now and now I can go to sleep in peace.
