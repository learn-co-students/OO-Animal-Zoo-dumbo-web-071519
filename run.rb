require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here

west = Zoo.new("west", "ca")
east = Zoo.new("east", "nyc")
LA = Zoo.new("LA", "ca")
NYC = Zoo.new("NYC", "nyc")
cat1 = Animal.new("cat", 25, "scruffy", west)
dog1 = Animal.new("dog", 40, "doggy", east)
cat2 = Animal.new("cat", 1, "SMOL Boi", LA)
dog2 = Animal.new("dog", 5000, "BIG BOI", NYC)
cat3 = Animal.new("cat", 3, "MED BOI", west)
lion = Animal.new("lion", 150, "king", west)



binding.pry
puts "done"
