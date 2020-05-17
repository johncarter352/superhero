class API
   #@url = "https://www.superheroapi.com/api.php/10213815254774657/search/#{name}"
   
  def self.get_hero(name)
    url = "https://www.superheroapi.com/api.php/10213815254774657/search/#{name}"
    response = Net::HTTP.get(URI(url))
    object = JSON.parse(response)
    results = object["results"]
     
    
  end
  
  def self.get_bio
   results[0]["biography"]
  end 
  
  def self.get_stats
  results[0]["powerstats"]
  end 
  
  def self.get_appearance
    results[0]["appearance"]
  end 
  
  def self.get_work
    results[0]["work"]

  
end

### service file/class. Responsible for communicating with my api - 
### going out to it, getting my information and returning it. 