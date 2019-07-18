require 'pry'

class Animal

@@all = []

    attr_reader :species, :nickname, :zoo
    attr_writer :weight 
 
    def initialize(zoo, species, weight, nickname)
        @zoo = zoo
        @species = species
        @weight = weight 
        @nickname = nickname

    end

# binding.pry

def  find_by_species
@species
end
 
def nickname
    @nickname
end

def weight 
    @weight
end

def species
    @species
end

def self.all 
    @@all
end

end

all_animals =
[cat = Animal.new("Bronx", "cat", 7, "meatball"),
dog = Animal.new("Bronx", "dog", 6, "doggo"),
rat = Animal.new("Bronx", "rat", 2, "rattatat")]