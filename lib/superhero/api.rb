class API
   
  def self.get_hero(name)
    url = "https://www.superheroapi.com/api.php/10213815254774657/search/#{name}"
    response = Net::HTTP.get(URI(url))
    object = JSON.parse(response)
    @results = object["results"]
    bio = @results[0]["biography"]
    Hero.new(name, bio)
  end
  
  def self.get_bio
   bio = @results[0]["biography"]
   bio.each {|key, value| puts "#{key}: #{value}"}
  end
  
  
  def self.get_stats
  stats = @results[0]["powerstats"]
  stats.collect {|key, value| puts "#{key}: #{value}"}
  end 
  
 
  def self.get_appearance
  app = @results[0]["appearance"]
  app.collect {|key, value| puts "#{key}: #{value}"}
  end 
  
 

  def self.get_work
  work = @results[0]["work"]
  work.collect {|key, value| puts "#{key}: #{value}"}
  end


  
end
