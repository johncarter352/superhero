require '.lib/superhero/api'

class Superhero
  
  attr_accessor :name, :object
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
  end
  
  def self.all 
    @@all
  end
  
  def name_choice
  
  def biography
     @object.results[0].biography
  end 
  
  def powerstats
    @object.results[0].powerstats
  end 
  
  def appearance 
     @object.results[0].appearance
  end 
  
  def work 
    @object.results[0].work
  end
  
  
  
  
  
  
end

## responsible for introducing Superhero