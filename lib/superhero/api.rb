class API
   #@url = "https://www.superheroapi.com/api.php/10213815254774657/search/#{name}"
   
  def self.get_hero(name)
    url = "https://www.superheroapi.com/api.php/10213815254774657/search/#{name}"
    response = Net::HTTP.get(URI(url))
    object = JSON.parse(response)
    @results = object["results"]
    @newname = @results[0]["name"] 
    @newname2 = @results[1]["name"]
    ## binding.pry
  end
  
  def self.get_bio
   bio = @results[0]["biography"]
   bio.each {|key, value| puts "#{key}: #{value}"}
  end 
  
  def self.get_bio2
   bio = @results[1]["biography"]
   bio.each {|key, value| puts "#{key}: #{value}"}
  end 
  
  def self.get_stats
  stats = @results[0]["powerstats"]
  stats.each {|key, value| puts "#{key}: #{value}"}
  end 
  
  def self.get_stats2
  stats = @results[1]["powerstats"]
  stats.each {|key, value| puts "#{key}: #{value}"}
  end 
  
  def self.get_appearance
  app = @results[0]["appearance"]
  app.each {|key, value| puts "#{key}: #{value}"}
  end 
  
   def self.get_appearance2
  app = @results[1]["appearance"]
  app.each {|key, value| puts "#{key}: #{value}"}
  end 
  
  def self.get_work
  work = @results[0]["work"]
  work.each {|key, value| puts "#{key}: #{value}"}
  end
  
  def self.get_work2
  work = @results[1]["work"]
  work.each {|key, value| puts "#{key}: #{value}"}
  end

  
end

### service file/class. Responsible for communicating with my api - 
### going out to it, getting my information and returning it. 