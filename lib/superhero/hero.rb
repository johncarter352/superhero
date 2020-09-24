class Hero
  
  attr_accessor :name, :biography, :stats, :appearance, :work
  
  @@all = []
  
  def initialize(name, biography, stats, appearance, work)
    @name = name 
    @biography = biography
    @stats = stats
    @appearance = appearance
    @work = work
    @@all << self
  end
  
  def self.all 
    @@all
  end
  
  def biography
    @biography.collect {|key, value| "#{key}: #{value}"}
  end
  
  def stats 
    @stats.collect {|key, value| "#{key}: #{value}"}
  end
  
  def appearance
     @appearance.collect {|key, value| "#{key}: #{value}"}
  end
  
  def work 
    @work.collect {|key, value| "#{key}: #{value}"}
  end
  
end
