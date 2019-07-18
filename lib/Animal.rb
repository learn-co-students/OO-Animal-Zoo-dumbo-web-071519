class Animal
    @@all = []
    attr_accessor :weight               #only method that needs to be able to change
    attr_reader :species, :nickname, :zoo  #getters only

    def initialize(species, weight, nickname, zoo)
        @species = species
        @weight = weight
        @nickname = nickname
        @@all << self    #passes the entire self into the class variable @@all
        @zoo = zoo
    end

    def self.all   #return on each individual instance at once 
        @@all
    end

    def self.find_by_species(species)
        @@all.select do |animal|
            animal.species == species
        end
    end

end 
