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

    def find_by_species

    end

end



