class Hero
  
  attr_accessor :name, :object, :results
  
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
    
  
  def name_choice
  end
  
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