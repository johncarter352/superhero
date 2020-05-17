class Hero
  
  attr_accessor :name, :object, :biography, :stats, :appearance, :work 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @results = results
    @@all << self
  end
  
  def self.all 
    @@all
  end
  
  def result
    API.result
  end
    
  
  end
  
  
  
  
  
  
  
end

## responsible for introducing Superhero