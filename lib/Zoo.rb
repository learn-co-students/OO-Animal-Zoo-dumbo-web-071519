class Zoo
    @@all = []
    attr_reader :name, :location

    def initialize(name, location)
            @name = name
            @location = location 
            @@all << self
    end

    def self.all
        @@all
    end

    def self.find_by_location(location)
        @@all.select do |zoo|
            zoo.location == location
        end
    end

    def animals
        Animal.all.select do |animal|
            animal.zoo == self
        end  
    end

    def animal_species
        animalArr = self.animals.map do |animal| animal.species end
        animalArr.uniq
    end

    def animal_nicknames
        self.animals.map do |animal| animal.nickname end
    end

    def find_by_species(species)
        self.animals.select do |animal|
            animal.species == species
        end
    end

    
end
