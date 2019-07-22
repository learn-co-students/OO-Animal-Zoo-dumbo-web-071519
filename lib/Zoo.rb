class Zoo

@@all = []

    def initialize(name, location)
        @name = name
        @location = location

        @@all << self
    end

    def location()
        @location
    end

    def name()
        @name
    end

    def self.all
        @@all
    end

    def animals
        Animal.all.select do |animal|
            animal.zoo == self
        end
    end 

    def animal_species
        self.animals.map do |animal_obj| 
            animal_obj.species
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

    def self.find_by_location(location)
        Zoo.all.select do |zoo|
            zoo.location == location
        end
    end

end


