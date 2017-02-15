## My list numbering is wonking when calling the print_panets method in line 178. The code block is on lines 149 - 157. I'm interating over the planets array variable, calling the planet_info method on each planet instance. It seems very similar to what I did in 83 - 86. Expect for some reason the numbers are printing out at the end of the string instead of the begining.

#### Solar System ######


# Wave 1 #

# Create a custom class
# Create and use an initialize method in your class
# Create and use instance variables in your class


####### Baseline ########

# Create a Planet class with a name attribute.
# You should be able to instantiate a new Planet object with an associated name.

class Planet
  attr_reader :name, :color, :distance_from_the_sun, :moons,  :rings

  def initialize(name, color, distance_from_the_sun,  moons, rings)
    @name = name
    @color = color
    @moons = moons
    @distance_from_the_sun =
    @rings = rings
  end

  # planet_info is a method that will give me a quick bio on the planets

  def planet_info
    puts "I am the planet #{@name}. I am #{@color} with #{@moons} moon(s), #{@rings} ring(s), and I live about #{@distance_from_the_sun} million miles from the sun. \n"
  end


end


# Primary Requirements

# Get creative! Give each instance of Planet at least five attributes.
# Allow these attributes to be set using a hash in initialize.
# You should be able to create many different planets with different properties, like Mercury, Venus, Earth, Mars, Jupiter, etc.



# 8 instances of of the class Planet with 5 attributes for each instance

jupiter = Planet.new(:Jupiter, "redish", 438.8, 64, 4)
venus = Planet.new(:Venus, "orangeish", 67.24, 0 ,0 )
mars = Planet.new(:Mars, "orangeish", 67.24, 0 ,0 )
mercury = Planet.new(:Mercury, "orangeish", 35.98, 0 ,0 )
earth = Planet.new(:Eath, "blue, green & brown", 92.96, 1 ,0 )
saturn = Planet.new(:Saturn, "many colors", 888.2, 62 , 7 )
uranus = Planet.new(:Uranus, "blue", 67.24, 27 , 13 )
neptune = Planet.new(:Neptune, "yellowish", 67.24, 13 , 5 )

# array that holds planet objects/instances

milky_way_planets = [venus, mars, mercury, earth, saturn, uranus, neptune, jupiter]

# loop to print a alittle bio for each planet #test
# planets.each do |planet|
#   planet_info planet
# end



#### Optional Enhancements ####

# Give each planet a @distance_from_the_sun attribute
# Write a program that asks for user input to query the planets:
# First, ask the user to select a planet they'd like to learn about.

puts "\nHello There! Which planet would you like to learn about?"


# Present the user with a list of planets from which they can choose. Something like:
# 1. Mercury, 2. Venus, 3. Earth, 4. Secret Earth, 5. Mars, 6. Jupiter, ... 13. Exit

list_number = 0 #list

milky_way_planets.each do |planet|
  list_number = list_number + 1
  puts "#{list_number}. #{planet.name}"
end


# start user interaction

print "\nPlease enther the number that corresponds to the planet you would like to learn more about: "
user_input = gets.chomp

# check to make sure the input is between a specific range

until ( user_input == user_input.to_i.to_s ) && ( user_input.to_i < 9 ) && ( user_input.to_i > 0 )
  puts "Oops! Please enter a number 1-8"
  user_input = gets.chomp
end

# user input calls the index of the planet array minus 1
index = user_input.to_i - 1

#calling the planet_info method on a specific object in the planet array. this will print a quick bio on a specific planet
milky_way_planets[index].planet_info

# Provide the user with well formatted information about the planet (diameter, mass, number of moons, primary export, etc.)
# Then ask the user for another planet.



# Wave 2

####### Primary Requirements #######

# Create a SolarSystem class that has an attribute planets that has zero to many Planet instances. There are a few different options for how to associate the planets with your solar system:
# Create a method that adds a single planet to a solar system
# Create a method that adds a list of planets to an existing list of planets
puts "\nWelcome to Wave 2, The Solar System Class!  \n\n"

class SolarSystem
  attr_reader :name, :planet_array, :sun

  def initialize(name, planet_array, sun)
    @name = name
    @planet_array = planet_array
    @sun = sun
  end

  # Method that will print the solar system name, how many planets, and thier names.
  def solar_system_info
    puts "\nThis is the solar system info: I am the #{@name} solar system. I have #{@planet_array.length} planets. My Planets are " + @planet_array.map{ |planet| planet.name.to_s }.join(', ') + "."


    #puts "My planets names are #{solar_system.planets[0]}"
    # to print in a nice looking list, prrint instead of puts, change behavior on the last value, also probabaly add commas.

  end

  #method that will print the name of a planet from the solar system class
  def print_planet(planet_name)
    @planet_array.each do | planet |
      if planet.name == planet_name
        "This is the print_planet method in the #{ @name } solar system for a specific argument: #{planet.planet_info}"
      end
    end
  end

  def print_planets
    puts "\nThis is the print_planets method called on the #{ @name } solar system!\n\n"
    list_number = 1
    @planet_array.each do | planet |
      print "#{list_number.to_s}.  #{planet.planet_info}"
      print
      list_number += 1
    end
  end

  def add_planet(planet)
    @planet_array << planet
  end

end



milky_way = SolarSystem.new("Milky Way", milky_way_planets, true )

# milky_way.solar_system_info
#
# milky_way.add_planet(Planet.new(:Ashton, "yellowish", 6, 1 , 5 )) # Adds a new planet with the planet class attributes
#
# milky_way.print_planet(:Ashton)

milky_way.solar_system_info


milky_way.print_planets #

# this loop iterates over the milky_way (obect/variable) array and runs the planet_info method on each planet

# milky_way.planet.each do |planet| #test
#   planet.planet_info
# end
