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
    
  
  def name_choice
  end
  
  def biography
     "Biography"
  end 
  
  def powerstats
    "Power Statistics"
  end 
  
  def appearance 
     "Appearance"
  end 
  
  def work 
    "Work"
  end
  
  
  
  
  
  
  
end

## responsible for introducing Superhero