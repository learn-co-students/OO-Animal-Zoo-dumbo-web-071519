require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
zoo1 = Zoo.new("Bklyn Publik", "Kweenz")
zoo3 = Zoo.new("Broncks Zuuhh", "Dabonx")
zoo33 = Zoo.new("Zulounation", "Dabonx")
bob = Animal.new("Camel", "Humpty", 5, zoo1)
carl = Animal.new("Duck", "Bob", 17, zoo1)
henri = Animal.new("Duck", "Goat", 12, zoo3)

binding.pry
puts "done"
