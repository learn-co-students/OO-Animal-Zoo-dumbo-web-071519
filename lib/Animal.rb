class Animal

    @@all = []

    attr_reader :nickname, :species, :weight, :zoo
    attr_writer :weight, :zoo

    def initialize(nickname, species, weight, zoo)
        @nickname = nickname
        @species = species
        @weight = weight
        @zoo = zoo #Zoo Object

        @@all << self
    end

    def self.find_by_species(species)
        Animal.all.select do |animal|
            animal.species == species
        end
    end

    def self.all
        @@all
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
     
    def zoo
        @zoo
    end
end



