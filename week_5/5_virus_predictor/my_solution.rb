# Refactored code
#this is taking the ruby data from another file to use in this one
require_relative 'state_data'

class VirusPredictor
#this method is initializing a new method for each state and setting class variables
  def initialize(state_of_origin, population_density, population, region, regional_spread)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @region = region
    @next_region = regional_spread
  end

  def virus_effects  #this method has calls the two other methods in this class
    predicted_deaths_and_speed_of_spread(@population_density, @population, @state)
  end

  private  #this is making the two methods below private, if 
  #placed over the virus_effects method, it will not be called 
  #when the program is run.

#this method predicts the amount of deaths per state based on population and density
#and the speed of spread based on population size and density
  def predicted_deaths_and_speed_of_spread(population_density, population, state) 
    speed = 0.0
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
      speed += 0.5
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
      speed += 1
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
      speed += 1.5
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
      speed += 2
    else 
      number_of_deaths = (@population * 0.05).floor
      speed += 2.5
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak and will spread across the state in #{speed} months.\n\n"
  end
end

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each {|key, value| key = VirusPredictor.new(key, STATE_DATA[key][:population_density], STATE_DATA[key][:population], STATE_DATA[key][:region], STATE_DATA[key][:regional_spread]) 
key.virus_effects}