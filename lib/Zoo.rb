class Zoo

  attr_reader :location, :name

  @@all = []

  def initialize(name, location)
    @name = name
    @location = location
    @@all << self
  end

  def self.all
    @@all
  end

  def animals
    Animal.all.select {|animal| animal.zoo==self}
  end

  def species
    
  end

end
