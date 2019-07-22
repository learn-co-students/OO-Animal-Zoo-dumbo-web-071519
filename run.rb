require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
zoony = Zoo.new("NY Zoo", "New York")
zooca = Zoo.new("LA Zoo", "California")

harambe = Animal.new("Harambe", "Gorilla", 400, zoony)
mars = Animal.new("Mars", "Cat", 5, zoony)
tony = Animal.new("Tony", "Tiger", 250, zooca)
winnie = Animal.new("Winnie", "Bear", 150, zooca)
lisa = Animal.new("Lisa", "Tiger", 2, zooca)



binding.pry
puts "done"
