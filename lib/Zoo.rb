class Zoo
require "pry"
    @@all = []
    attr_accessor :name, :location

def initialize(name, location)
    @name = name
    @location = location
    @@all << self
end

def self.all
    @@all
end        

def animals
    Animal.all.select do  |animal| ##?
        animal.zoo == self
    end
end   

def animal_species
    self.animals.map do |animal|
        animal.species
    end.uniq
end   

def find_by_species(species)
    self.animals.select do |animal|
        animal.species == species
    end   
end   

def animal_nicknames

    self.animals.map do |animal|
        animal.nickname
    end    

end   

def find_by_location(local)

    self.all.select do |zoo|
        zoo.location == local
    end    

end   



    


end