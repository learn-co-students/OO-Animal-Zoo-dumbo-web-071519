class Zoo
    # global variables!
    @@zoos = []

    attr_reader :location, :name

    #initialize!
    def initialize(name, location)
        @name = name
        @location = location
        @@zoos << self
    end

    def animals
        animal_array = Animal.all.select do |animal_obj|
            animal_obj.zoo == self
        end
    end

    def new_animal(species, nickname, weight)
        newbie = Animal.new(self, species, nickname, weight)
    end

    def animal_species
        self.animals.uniq do |animal|
            animal.species
        end
    end

    def find_by_species(animal_species)
        self.animals.select do |animal_obj|
            animal_obj.species == animal_species
        end
    end

    def animal_nicknames
        self.animals.map do |animal_obj|
        animal_obj.nickname
        end
    end

    def self.find_by_location(location)
        @@zoos.select do |zoo_obj|
            zoo_obj.location == location
        end
    end

    def self.all
        @@zoos
    end

end
