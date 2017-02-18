# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative starts looking in the directory of the file where it is being called
# require starts looking at predefined points for the required file
#
#
require_relative 'state_data'

class VirusPredictor
  # Intiializes  3 values of each instance of VirusPredictor and stores the values in
  # instance variables.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  # calling the two methods predicted_deaths and speed_of_spread one after another.
  def virus_effects
    # predicted_deaths(@population_density, @population, @state)
    # speed_of_spread(@population_density, @state)
    predicted_deaths
    speed_of_spread
  end

  private

  def predicted_deaths
    # predicted deaths is solely based on population density
    # based on the value of population_density, assigns a value to population and prints
    # number_of_deaths in that specific state.
    
    if @population_density >= 200
      multiplier = 0.4
    elsif @population_density >= 150
      multiplier = 0.3
    elsif @population_density >= 100
      multiplier = 0.2
    elsif @population_density >= 50
      multiplier = 0.1
    else
      multiplier = 0.05
    end
    number_of_deaths = (@population * multiplier).floor

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    # takes population_density and state and depending on the value of the population_density
    # it predicts the speed of the virus in number of months.
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


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

STATE_DATA.each do |key,value| 
  virus_data = VirusPredictor.new(key, value[:population_density], value[:population])

  virus_data.virus_effects
  
end




#=======================================================================
# Reflection Section
# One uses a symbol as a key, and the other uses a string as a key.
# Require relative starts looking for the file in the directory relative to where
# it is being called. Require will search for the file using the file path.
# We used the .each method to iterate through a hash.
# We didnt have to set explicit parameters because the parameters were asking for class
# attributes. Those could already be accessed so it wasn't necessart to specifiy them.
# We also made predicted_deaths a little easier to read by create a multiplier variable.
# I definitely solidified my ability to call upon information stored in hashes and calling
# upon class attributes.