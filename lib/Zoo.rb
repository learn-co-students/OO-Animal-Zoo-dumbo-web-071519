class Zoo

    @@all= []
    attr_reader :name, :location
    
    def initialize(name, location)
        @name = name
        @location = location
        @@all << self
    end

    def self.all
      @@all
    end
    
    def animals
        Animal.all.select { |animal|
            animal.zoo == self
        }
    end
    def animal_species
        all_animal_species = animals.map{|animal| animal.species}
        all_animal_species.uniq
    end

    def find_by_animal_species(species)
        Animal.find_by_species(species).select { |animal|
            animal.zoo == self
        }
    end

    def animal_nickname
        all_animal_nicknames = animals.map{|animal| animal.nickname}
        all_animal_nicknames.uniq
    end
    
    def self.find_by_location(location)
        Zoo.all.select { |zoo|
        zoo.location == location
    }
    end
end
