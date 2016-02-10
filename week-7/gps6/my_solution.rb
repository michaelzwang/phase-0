# Virus Predictor

# I worked on this challenge [with: ].
# We spent [#] hours on this challenge.


#
require_relative 'state_data'

class VirusPredictor

#   sets instance of the new class's variables equal to instance variables
  def initialize(state)
    @state = state
    @population = STATE_DATA[state][:population]
    @population_density = STATE_DATA[state][:population_density]
  end

#   when called runs the predicted_deaths & speed_of_spread methods
  def virus_effects
    predicted_deaths
    speed = speed_of_spread
    puts "#{@state} will lose #{@number_of_deaths} people in this outbreak and will spread across the state in #{speed} months."
    puts
  end

  private

#   if stmts for pop_density to determine # of deaths based on population
  def predicted_deaths  #(population_density, population, state)
    # predicted deaths is solely based on population density
    if @population_density >= 200
      x = 0.4
    elsif @population_density >= 150
      x =  0.3
    elsif @population_density >= 100
      x =  0.2
    elsif @population_density >= 50
      x =  0.1
    else
      x = 0.05
    end
    
    @number_of_deaths = (@population * x).floor   
    
  end

#   changes speed variable based on population density
  def speed_of_spread #(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    # speed = 0.0

    if @population_density >= 200
      0.5
    elsif @population_density >= 150
      1
    elsif @population_density >= 100
      1.5
    elsif @population_density >= 50
      2
    else
      2.5
    end
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


STATE_DATA.each do |state, value|
  state = VirusPredictor.new(state)
  
  state.virus_effects
end

#=======================================================================
# Reflection Section
#What are the differences between the two different hash syntaxes shown in the state_data file?
# => the states are strings while population density and population are symbols
# => using symbols saves memory and is more efficient since the same symbol is used 50 times

#What does require_relative do? How is it different from require?
# => require_relative takes data from a local file
# => require is similar but takes from any file

#What are some ways to iterate through a hash?
# => you can use the each or map method

#When refactoring virus_effects, what stood out to you about the variables, if anything?
# => we found that we didn't need to add the variables in the method

#What concept did you most solidify in this challenge?
# => I got more practice working with nested hashes and accessing elements.
# => I also learned more about thinking of ways to refactor and keep code DRY








