class Hero
  
  attr_accessor :name, :object, :biography, :stats, :appearance, :work 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @biography = biography
    @stats = stats
    @appearance = appearance
    @work = work
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

## responsible for introducing Superhero