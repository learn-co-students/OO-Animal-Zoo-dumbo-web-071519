require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'

zoo1 = Zoo.new("Brkyln", "Dumbo")
zoo2 = Zoo.new("Kweens", "Sunnyside")


bob = Animal.new("cat", "bob", 8, zoo1)
loos = Animal.new("dog", "loss", 15, zoo1)
kitty = Animal.new("cat", "kitty", 19, zoo2)
lilly = Animal.new("cat", "milly", 121, zoo1)
puppy = Animal.new("dog", "puppy", 29, zoo1)
kitty = Animal.new("cat", "kitty", 19, zoo2)
duckki = Animal.new("dog", "duckki", 29, zoo2)

binding.pry
#Test your code here


binding.pry
puts "done"
