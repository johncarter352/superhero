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
  
  def biography
    
  end 
  
  def powerstats
    
  end 
  
  def appearance 
    
  end 
  
  def work 
    
  end
  
  
  
  
  
  
end

## responsible for introducing Superhero