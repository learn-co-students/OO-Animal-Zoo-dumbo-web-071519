require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here

Zootopia = Zoo.new("Zootopia", "Pluto")
TheBronxZoo = Zoo.new("Bronx Zoo", "Bronx")
TheOtherBronxZoo = Zoo.new("Other Bronx Zoo", "Bronx")

Bunny = Animal.new("Bunny", 5, "Snowflake", Zootopia)
Giraffe = Animal.new("Giraffe", 1800, "Jared", TheBronxZoo)
Pinky = Animal.new("Flamingo", 10, "Pinky", Zootopia)
Friend = Animal.new("Flamingo", 15, "Friend", Zootopia)

binding.pry
puts "done"
