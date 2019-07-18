require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here

zoo1=Zoo.new("Bronks_zoo", "New York")
animal1=Animal.new("Teddy", "Bear", "500", zoo1)
binding.pry
puts "done"
