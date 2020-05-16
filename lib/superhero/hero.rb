class Superhero
  
  attr_accessor :name, :fullname, :placeofbirth, :publisher
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
  end
  
  def self.all 
    @@all
  end
  
  
  
  
  
end

## responsible for introducing Superhero