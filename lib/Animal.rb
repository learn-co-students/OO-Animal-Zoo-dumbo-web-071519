class Animal
    @@all = []
    attr_accessor :weight, :zoo
    attr_reader :species, :nickname

    def initialize(species, nickname, weight, zoo)
        @species = species
        @nickname = nickname
        @weight = weight
        @zoo = zoo
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_by_species(species)
        self.all.select do |animal|
            animal.species == species
        end
    end

end
