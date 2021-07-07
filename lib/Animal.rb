class Animal
    #global variables
    @@animals = []

    #accessors
    attr_reader :species, :nickname, :zoo
    attr_accessor :weight
    

    # initialize!
    def initialize(zoo, species, nickname, weight)
        @zoo = zoo
        @species = species
        @nickname = nickname
        @weight = weight
        @@animals << self
    end

    def self.all
        @@animals
    end

    def self.find_by_species(animal_species)
        @@animals.select do |animal|
            animal.species == animal_species
        end
    end



end
