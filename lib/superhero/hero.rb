class Hero
  
  attr_accessor :name, :biography
  
  @@all = []
  
  def initialize(name, biography)
    @name = name 
    @biography = biography
    @@all << self
  end
  
  def self.all 
    @@all
  end
  
  def biography
    bio.each {|key, value| "#{key}: #{value}"}
  end
  
  def stats 
    stats.collect {|key, value| "#{key}: #{value}"}
  end
  
  def appearance
     appearance.collect {|key, value| "#{key}: #{value}"}
  end
  
  def work 
    work.collect {|key, value| "#{key}: #{value}"}
  end
  
end
