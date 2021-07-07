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

    def self.all   #return each individual instance at once 
        @@all
    end

    def self.find_by_species(species)
        self.select do |animal|
            animal.species == species
        end
    end

end 


#the animal needs to know what zoo it is in in order  to maintain the single source of truth 
#that way an animal does not keep track of location 
#source of truth is generally in the "there are many of this" model


#   Zoo#location means we want an instance method of location   ===>  def xxx creates it 

# self.anything is a class method  ===>  written in benchmarks as `x.method_name`
#  it would be      ===> 

#for instance variables, we can put it in accessor but for class methods, the getter/setter must be manually written
#this will basically be the format of the code challenge

#READ THE README MANY TIMES


