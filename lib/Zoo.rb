class Zoo

@@all = []
attr_reader :name, :location
attr_writer :name, :location
    def initialize(name, location)
        @name = name
        @location = location

        @@all << self
    end

    def self.all
        @@all
    end

    def animals
        Animal.all.select do |animal|
         animal.zoo == self
        end
    end 
    
    def animal_species()
        anim_spec=[]
        self.animals.map do |animal| 
            anim_spec << animal.species
        end
        anim_spec.uniq
     end
    
    def self.find_by_location(local)
        Zoo.all.select do |zoo|
            zoo.location == local
        end
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

end


