require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'

#Test your code here

zoo1_obj = Zoo.new("zoo1", "brooklyn")
zoo2_obj = Zoo.new("zoo2", "Queens")
zoo3_obj = Zoo.new("zoo3", "Queens")
animal_one = Animal.new(zoo1_obj, "cat", "kitty", 50)
animal_two = Animal.new(zoo1_obj, "cat", "Lioness", 45)
animal_three = Animal.new(zoo2_obj, "cat", "Lioness", 45)
animal_four = Animal.new(zoo2_obj, "bird", "Tweety", 1)






binding.pry
puts "done"
#Zoo after initialization
    # Zoo should return a #name and #location
    # Global variable for all the Zoo instances
    # Zoo needs to pull an array of animal classes from the animal class
    # generate a UNIQUE array of animal species
    # find a SPECIFIC species (instance function)
    # generate an ARRAY of ANIMAL @nickname s
    # class function that finds the location of the ANIMAL instance

#ANIMAL CLASS
    # instantiated with @species @nickname and @weight
    # weight - attr_attribute
    # species and nickname ONLY readers
    # return the array of animal (Class method)
    # return the zoo object that the animal is in (instance method)
    # class function .find_by_species(species), returns an array of all animals with that species
